import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchViewroute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
