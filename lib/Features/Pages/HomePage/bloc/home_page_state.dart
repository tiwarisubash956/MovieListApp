part of 'home_page_bloc.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

final class ChagedIndexState extends HomePageState {
  final int index;

  ChagedIndexState({required this.index});
}
