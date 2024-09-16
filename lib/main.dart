import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/Features/home/presentation/manager/feature_books_cubit/featured_books_cubit_cubit.dart';
import 'package:book/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit_cubit.dart';
import 'package:book/constrant.dart';
import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookscubit(
            getIt.get<HomeReposImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeReposImpl>(),
          )..fetchNewsetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}

/* GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor,
      textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ),
      home: SplashViews(),
    ); */
