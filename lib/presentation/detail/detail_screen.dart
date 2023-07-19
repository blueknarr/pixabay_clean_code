import 'package:flutter/material.dart';

import '../../domain/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('조회수: ${photo.views}'),
      ),
      body: Hero(
        tag: photo.id,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              photo.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
