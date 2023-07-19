import 'package:flutter_test/flutter_test.dart';
import 'package:pixabay_clean_code/data/repository/pixabay_repository_impl.dart';

void main() {
  test('Pixabay Repository Impl Test', () async {
    final repository = PixabayRepositoryImpl();

    final images = await repository.getImages('banana');

    expect(images[0].id, 673697);
  });
}
