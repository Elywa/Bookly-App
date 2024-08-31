import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeroute = '/homeView';
  static const bookDetailsroute = '/bookDetailsView';
  static const searchViewroute = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeroute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsroute,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImple>(),
          ),
          child: BookDetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: searchViewroute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
