import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos_impl.dart';
import 'package:book/Features/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:book/Features/home/presentation/views/book_details_view.dart';
import 'package:book/Features/home/presentation/views/home.dart';
import 'package:book/Features/search/presetation/views/searchview.dart';
import 'package:book/Features/splash/presentation/views/splash_views.dart';
import 'package:book/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) =>const SplashViews()),
    GoRoute(path: '/Homeview', builder: (context, state) =>const Homeview()),
    GoRoute(
      path: '/BookDetailsView',
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeReposImpl>()),
        child: BookDetailsView(bookModel: state.extra as BookModel,),
      ),
    ),
    GoRoute(path: '/searchview', builder: (context, state) =>const Searchview()),
    // GoRoute(path: '/LoadingListPage',builder: (context, state) => LoadingListPage(),)
  ]);
}
