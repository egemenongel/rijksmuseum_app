// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rijksmuseum_app/core/components/bottom_loading.dart';
import 'package:rijksmuseum_app/core/components/paginated_view_error.dart';
import 'package:rijksmuseum_app/core/errors/exceptions.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/core/services/dio_service.dart';
import 'package:rijksmuseum_app/core/utils/print.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_item_card.dart';

class ItemsGrid extends ConsumerStatefulWidget {
  const ItemsGrid({
    super.key,
    required this.items,
  });

  final List<ArtObjectModel> items;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ItemsGridState();
}

class _ItemsGridState extends ConsumerState<ItemsGrid> {
  final PagingController<int, ArtObjectModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      fetchItems(pageKey);
    });
    super.initState();
  }

  Future<void> fetchItems(int pageKey) async {
    try {
      final dio = ref.read(dioService).dio;
      final res = await dio.get(
        '',
        queryParameters: {'ps': 6, 'p': pageKey},
      );
      final resModel = HomeResponseModel.fromJson(res.data);

      final newItems = resModel.artObjects;
      final isLastPage = newItems!.length < 6;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } on DioException catch (e) {
      _pagingController.error = e;
      Print.error(e.message);
      if (e.type == DioExceptionType.connectionError) {
        throw InternetException();
      }
      throw HomeItemsException();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedGridView(
        pagingController: _pagingController,
        padding: EdgeInsets.zero,
        showNewPageProgressIndicatorAsGridChild: false,
        showNewPageErrorIndicatorAsGridChild: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        builderDelegate: PagedChildBuilderDelegate<ArtObjectModel>(
          itemBuilder: (_, item, __) => HomeItemCard(
            artItem: item,
          ),
          newPageProgressIndicatorBuilder: (_) => const BottomLoading(),
          firstPageErrorIndicatorBuilder: (context) => PaginatedViewError(
            pagingController: _pagingController,
            errorText: 'Error occured!'.hardCoded,
          ),
          newPageErrorIndicatorBuilder: (_) => PaginatedViewError(
            pagingController: _pagingController,
            errorText: 'New page could not loaded!'.hardCoded,
          ),
        ),
      ),
    );
  }
}
