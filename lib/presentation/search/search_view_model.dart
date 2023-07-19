import 'package:flutter/cupertino.dart';
import 'package:pixabay_clean_code/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:pixabay_clean_code/presentation/search/search_state.dart';

class SearchViewModel with ChangeNotifier {
  final GetTopFiveMostViewedImagesUseCase _getTopFiveMostViewedImagesUseCase;

  SearchViewModel(this._getTopFiveMostViewedImagesUseCase);

  SearchState _state = const SearchState();

  SearchState get state => _state;

  Future<void> fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      isLoading: false,
      images: await _getTopFiveMostViewedImagesUseCase.execute(query),
    );
    notifyListeners();
  }
}
