import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

/// Bloc for managing the state of the home page, particularly handling
/// the bottom navigation bar index changes.
/// 
/// This Bloc listens for events related to the home page and updates
/// the state accordingly.
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  /// Constructor to initialize the `HomePageBloc` with the initial state.
  /// 
  /// The initial state is set to [HomePageInitial].
  HomePageBloc() : super(HomePageInitial()) {
    // Registering the event handler for `HomePageEvent`.
    on<HomePageEvent>((event, emit) {
      // Checks if the received event is of type `ChangeBottomNavigationItemsEvents`.
      if (event is ChangeBottonNavigationItemsEvents) {
        // Emits a new state with the updated index.
        emit(ChagedIndexState(index: event.index));
      }
    });
  }
}
