import 'package:mocktail/mocktail.dart';
import 'package:rijksmuseum_app/features/art_item_detail/service/art_item_detail_service.dart';
import 'package:rijksmuseum_app/features/home/service/home_service.dart';

class MockHomeService extends Mock implements IHomeService {}

class MockArtItemDetailService extends Mock implements IArtItemDetailService {}
