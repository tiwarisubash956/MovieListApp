// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:movielistapp/Features/Auth/Presentation/Screens/ForgetPasswordScreen.dart/ForgetPasswordScreen.dart'
    as _i1;
import 'package:movielistapp/Features/Auth/Presentation/Screens/SignInScreen/SignInScreen.dart'
    as _i7;
import 'package:movielistapp/Features/Auth/Presentation/Screens/SignUpScreen/SignUpScreen.dart'
    as _i6;
import 'package:movielistapp/Features/Auth/Presentation/Screens/SplashScreen/SplashPage.dart'
    as _i8;
import 'package:movielistapp/Features/Pages/HomePage/HomePage.dart' as _i2;
import 'package:movielistapp/Features/Pages/MovieDetailPage/MovieDetailPage.dart'
    as _i3;
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart'
    as _i11;
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/MoviesScreen.dart'
    as _i4;
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/SearchScreen.dart'
    as _i5;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ForgetPasswordRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ForgetPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MovieDetailPage(
          key: args.key,
          movie: args.movie,
        ),
      );
    },
    MoviesRoute.name: (routeData) {
      final args = routeData.argsAs<MoviesRouteArgs>(
          orElse: () => const MoviesRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MoviesPage(key: args.key),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SearchScreen(
          key: args.key,
          searchTerm: args.searchTerm,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpScreen(),
      );
    },
    Signinscreen.name: (routeData) {
      final args = routeData.argsAs<SigninscreenArgs>(
          orElse: () => const SigninscreenArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Signinscreen(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i9.PageRouteInfo<void> {
  const ForgetPasswordRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MovieDetailPage]
class MovieDetailRoute extends _i9.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    _i10.Key? key,
    required _i11.MovieModel movie,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const _i9.PageInfo<MovieDetailRouteArgs> page =
      _i9.PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.movie,
  });

  final _i10.Key? key;

  final _i11.MovieModel movie;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, movie: $movie}';
  }
}

/// generated route for
/// [_i4.MoviesPage]
class MoviesRoute extends _i9.PageRouteInfo<MoviesRouteArgs> {
  MoviesRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          MoviesRoute.name,
          args: MoviesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MoviesRoute';

  static const _i9.PageInfo<MoviesRouteArgs> page =
      _i9.PageInfo<MoviesRouteArgs>(name);
}

class MoviesRouteArgs {
  const MoviesRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'MoviesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SearchScreen]
class SearchRoute extends _i9.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    _i10.Key? key,
    required String searchTerm,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            searchTerm: searchTerm,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i9.PageInfo<SearchRouteArgs> page =
      _i9.PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    required this.searchTerm,
  });

  final _i10.Key? key;

  final String searchTerm;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, searchTerm: $searchTerm}';
  }
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Signinscreen]
class Signinscreen extends _i9.PageRouteInfo<SigninscreenArgs> {
  Signinscreen({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          Signinscreen.name,
          args: SigninscreenArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Signinscreen';

  static const _i9.PageInfo<SigninscreenArgs> page =
      _i9.PageInfo<SigninscreenArgs>(name);
}

class SigninscreenArgs {
  const SigninscreenArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SigninscreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
