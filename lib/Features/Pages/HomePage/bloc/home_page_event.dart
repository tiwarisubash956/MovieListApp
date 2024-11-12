part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}
class ChangeBottonNavigationItemsEvents extends HomePageEvent{
  final int index;

  ChangeBottonNavigationItemsEvents({required this.index});
}
