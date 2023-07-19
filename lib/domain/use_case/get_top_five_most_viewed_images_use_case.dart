import '../../presentation/search/search_state.dart';
import '../model/photo.dart';
import '../repository/pixabay_repository.dart';

class GetTopFiveMostViewedImagesUseCase {
  final PixabayRepository _repository;

  GetTopFiveMostViewedImagesUseCase(this._repository);

  Future<List<Photo>> execute(String query) async {
    final images = await _repository.getImages(query);
    images.sort((a, b) => b.views.compareTo(a.views));

    return images.take(5).toList();
  }
}
