import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PaginatedViewError extends StatelessWidget {
  const PaginatedViewError({
    super.key,
    required this.errorText,
    required this.pagingController,
  });

  final String errorText;
  final PagingController<int, Object> pagingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(errorText),
        ElevatedButton(
          onPressed: () => pagingController.retryLastFailedRequest(),
          child: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
