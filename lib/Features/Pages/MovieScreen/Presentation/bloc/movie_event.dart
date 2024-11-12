part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {}

final class MovieLoadEvent extends MovieEvent {
  final int page;

  MovieLoadEvent({required this.page});
}
