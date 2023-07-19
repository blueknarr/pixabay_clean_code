import 'dart:convert';

import 'package:pixabay_clean_code/domain/api/pixabay_api.dart';
import 'package:pixabay_clean_code/data/dto/photo_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApiImpl implements PixabayApi {
  @override
  Future<PhotoDto> getImages(String query) async {
    final uri =
        'https://pixabay.com/api/?key=37726328-4a2b1a654b17d6bad1ec74dba&q=$query&image_type=all%27';
    final http.Response response = await http.get(Uri.parse(uri));
    final jsonString = jsonDecode(response.body);

    return PhotoDto.fromJson(jsonString);
  }
}
