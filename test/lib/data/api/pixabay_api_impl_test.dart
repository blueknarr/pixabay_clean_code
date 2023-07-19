import 'package:flutter_test/flutter_test.dart';
import 'package:pixabay_clean_code/data/api/pixabay_api_impl.dart';

void main() {
  test('Photo Api Impl Test', () async {
    final api = PixabayApiImpl();
    final dto = await api.getImages('banana');

    expect(dto.total, 1932);
  });
}
