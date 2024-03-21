import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/art_item_detail_model.dart';
import '../service/art_item_detail_service.dart';

class ArtItemDetailViewmodel
    extends FamilyAsyncNotifier<ArtItemDetailModel, String> {
  @override
  FutureOr<ArtItemDetailModel> build(String arg) async {
    return await ref.read(artItemDetailService).fetchItemDetails(arg);
  }
}

final artItemDetailViewmodel = AsyncNotifierProviderFamily<
    ArtItemDetailViewmodel,
    ArtItemDetailModel,
    String>(ArtItemDetailViewmodel.new);
