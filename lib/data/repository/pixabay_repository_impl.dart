import 'package:pixabay_clean_code/domain/api/pixabay_api.dart';
import 'package:pixabay_clean_code/data/api/pixabay_api_impl.dart';
import 'package:pixabay_clean_code/data/mapper/photo_mapper.dart';
import 'package:pixabay_clean_code/domain/repository/pixabay_repository.dart';

import '../../domain/model/photo.dart';

class PixabayRepositoryImpl implements PixabayRepository {
  final api = PixabayApiImpl();

  @override
  Future<List<Photo>> getImages(String query) async {
    final resultDto = await api.getImages(query);

    if (resultDto == null) {
      return [];
    }

    return resultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
