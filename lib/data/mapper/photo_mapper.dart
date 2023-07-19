import '../../domain/model/photo.dart';
import '../dto/photo_dto.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      imgUrl: webformatURL ?? '',
      tags: tags ?? '',
      views: views ?? 0,
    );
  }
}
