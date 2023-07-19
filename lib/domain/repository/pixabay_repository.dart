import '../model/photo.dart';

abstract interface class PixabayRepository {
  Future<List<Photo>> getImages(String query);
}
