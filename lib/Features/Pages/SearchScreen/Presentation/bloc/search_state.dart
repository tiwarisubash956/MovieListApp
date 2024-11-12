part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}


final class SearchLoadingState extends SearchState {}

final class SearchLodedState extends SearchState {
  final bool hasReachedMax;

  final List<MovieModel> Searchs;

  SearchLodedState({required this.hasReachedMax, required this.Searchs});
}

final class SearchsErrorState extends SearchState {
  final String message;

  SearchsErrorState({required this.message});
}
