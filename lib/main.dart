import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';

import 'package:bookly_app/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              getIt.get<HomeRepoImple>(),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(create: (context) {
          return NewestBooksCubit(
            getIt.get<HomeRepoImple>(),
          );
        }),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
              .textTheme), // هنا انا حطيت البرامتر اللى جو الفونت عشان هو جوه الباكدج بيستخدم الفونت من اللايت مود وانا هنا بستخدم الدارك مود
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
