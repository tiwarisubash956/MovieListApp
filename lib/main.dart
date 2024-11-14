import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movielistapp/Configuration/routes/app_router.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Pages/HomePage/bloc/home_page_bloc.dart';

import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/bloc/movie_bloc.dart';

import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/bloc/search_bloc.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
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
        BlocProvider(create: (_) => di.sl<AuthBloc>()),
        BlocProvider(create: (_) => di.sl<HomePageBloc>()),
        BlocProvider(create: (_) => di.sl<MovieBloc>()),
        BlocProvider(create: (_) => di.sl<SearchBloc>()),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Movie App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          ),
          routerConfig: appRouter.config()),
    );
  }
}
