import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Reposstoryimp/MovieRepoimpl.dart';

part 'movie_event.dart'; // Import movie events definition
part 'movie_state.dart'; // Import movie states definition

// Bloc class to manage movie data state
class MovieBloc extends Bloc<MovieEvent, MovieState> {
  // Movie repository implementation to fetch data
  final Moviesrepoimpl moviesrepoimpl;

  // Pagination variables
  final int per_page = 100; // Number of items per page
  int page = 1; // Current page number

  // Constructor to initialize MovieBloc with the repository
  MovieBloc({required this.moviesrepoimpl}) : super(MovieInitial()) {
    // Handling events inside the bloc
    on<MovieEvent>((event, emit) async {
      // When a MovieLoadEvent is triggered
      if (event is MovieLoadEvent) {
        try {
          // Fetch movies using the repository and handle the response
          final failureorSucces =
              await moviesrepoimpl.fetchMovies(event.page, per_page);
          
          // Handling either success or failure
          failureorSucces.fold(
            (failure) {
              // In case of a failure, emit the error state
              emit(MoviesErrorState(
                  message: ((failure as ServerFailure).message)));
            },
            (success) {
              // On successful data retrieval, emit MovieLoadedState with movie list
              emit(MovieLodedState(
                  movies: success, hasReachedMax: success.isEmpty));

              // Increment the page number for future requests
              page++;
            },
          );
        } catch (e) {
          // In case of an exception, emit error state with exception message
          emit(MoviesErrorState(message: "$e"));
        }
      }
    });
  }
}
