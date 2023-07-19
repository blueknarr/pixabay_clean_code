import '../../data/dto/photo_dto.dart';

abstract interface class PixabayApi {
  Future<PhotoDto> getImages(String query);
}
