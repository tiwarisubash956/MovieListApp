part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

final class SerachMovieEvent extends SearchEvent {
  final int page;
  final String search_term;

  SerachMovieEvent({required this.page, required this.search_term});
}
