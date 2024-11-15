import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:movielistapp/Core/Network/dio_config.dart';
import 'package:movielistapp/Features/Auth/Data/DataSources/AuthDataSource.dart';
import 'package:movielistapp/Features/Auth/Data/Repository/AuthRepoImpl.dart';
import 'package:movielistapp/Features/Auth/Domain/Repository/AuthRepo.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/SignInUseCase.dart';
import 'package:movielistapp/Features/Auth/Domain/UseCases/signupUsecase.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Pages/HomePage/bloc/home_page_bloc.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/DataSource/MovieDataSource.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Reposstoryimp/MovieRepoimpl.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Domain/Repository/MovieRepo.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/bloc/movie_bloc.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/DataSource/SearchDataSource.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/Reposstoryimp/SearchRepoimpl.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Domain/Repository/SerarchRepo.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/bloc/search_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => AuthBloc(signinusecase: sl(), signupusecase: sl()));

  sl.registerFactory(() => HomePageBloc());

  // Register the movie bloc with dependencies
  sl.registerFactory(() => MovieBloc(moviesrepoimpl: sl()));

  // Register the search bloc with dependencies
  sl.registerFactory(() => SearchBloc(searchRepoimpl: sl()));

  sl.registerFactory(() => Signupusecase(authrepo: sl()));
  sl.registerFactory(() => Signinusecase(authrepo: sl()));

  // Register Dio for network calls
  sl.registerLazySingleton(() => createDio());

  // Register FirebaseAuth for user authentication
  sl.registerLazySingleton(() => FirebaseAuth.instance);

  //Auth repo implemtaion with dependencies

  sl.registerLazySingleton<Authrepo>(() => Authrepoimpl(authDataSource: sl()));

  // Register SearchTermDataSource implementation
  sl.registerLazySingleton<AuthDataSource>(
      () => AuthDataSourceimpl(dio: sl(), firebaseAuth: sl()));

  sl.registerLazySingleton<Authrepoimpl>(
      () => Authrepoimpl(authDataSource: sl()));

  sl.registerFactory<AuthDataSourceimpl>(
      () => AuthDataSourceimpl(dio: sl(), firebaseAuth: sl()));

  // Register MovieRepository implementation with its dependencies
  sl.registerLazySingleton<Moviesrepo>(() => Moviesrepoimpl(
        moviesDataSource: sl(),
      ));

  sl.registerLazySingleton<Moviesrepoimpl>(
      () => Moviesrepoimpl(moviesDataSource: sl()));

  // Register the MoviesDataSource implementation
  sl.registerLazySingleton<MoviesDataSource>(
      () => MoviesDataSourceimpl(dio: sl()));

  // Register SearchRepo implementation with its dependencies
  sl.registerLazySingleton<SearchRepo>(
      () => SearchRepoimpl(searchRepoDataSource: sl()));

  // Register SearchTermDataSource implementation
  sl.registerLazySingleton<SearchTermDataSource>(
      () => SearchTermDataSourceimpl(dio: sl()));

  sl.registerLazySingleton<SearchRepoimpl>(
      () => SearchRepoimpl(searchRepoDataSource: sl()));

  sl.registerFactory<SearchTermDataSourceimpl>(
      () => SearchTermDataSourceimpl(dio: sl()));
}
