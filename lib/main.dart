import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movielistapp/Configuration/routes/app_router.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/DataSource/MovieDataSource.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Reposstoryimp/MovieRepoimpl.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/bloc/movie_bloc.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/DataSource/SearchDataSource.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/Reposstoryimp/SearchRepoimpl.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/bloc/search_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MovieBloc(
                moviesrepoimpl: Moviesrepoimpl(
                    moviesDataSource: MoviesDataSourceimpl(
                         dio: Dio())))),
        BlocProvider(
            create: (context) => SearchBloc(
                searchRepoimpl: SearchRepoimpl(
                    searchRepoDataSource: SearchTermDataSourceimpl(dio: Dio()))))
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Movie App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: appRouter.config()),
    );
  }
}