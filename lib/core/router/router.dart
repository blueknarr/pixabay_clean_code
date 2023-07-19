import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:pixabay_clean_code/data/repository/pixabay_repository_impl.dart';
import 'package:provider/provider.dart';

import '../../domain/model/photo.dart';
import '../../domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import '../../presentation/detail/detail_screen.dart';
import '../../presentation/search/search_screen.dart';
import '../../presentation/search/search_view_model.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
        path: '/main',
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => SearchViewModel(
              GetTopFiveMostViewedImagesUseCase(
                PixabayRepositoryImpl(),
              ),
            ),
            child: const SearchScreen(),
          );
        },
        routes: [
          GoRoute(
              path: 'detail',
              builder: (context, state) {
                final photo = state.extra as Photo;
                return DetailScreen(photo: photo);
              })
        ])
  ],
);
