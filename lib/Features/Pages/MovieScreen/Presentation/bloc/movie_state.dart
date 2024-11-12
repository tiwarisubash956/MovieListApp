part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieLoadingState extends MovieState {}

final class MovieLodedState extends MovieState {
  final bool hasReachedMax;

  final List<MovieModel> movies;

  MovieLodedState({required this.hasReachedMax, required this.movies});
}

final class MoviesErrorState extends MovieState {
  final String message;

  MoviesErrorState({required this.message});
}
