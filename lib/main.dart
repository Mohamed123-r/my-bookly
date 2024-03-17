import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/api_service.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:my_bookly/features/home/presentation/manager/features_book_cubit/featured_books_cubit.dart';
import 'package:my_bookly/features/home/presentation/manager/news_books/news_books_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewsBooksCubit(
            HomeRepoImpl(
              ApiService(
                Dio(),
              ),
            ),
          )..newsBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
