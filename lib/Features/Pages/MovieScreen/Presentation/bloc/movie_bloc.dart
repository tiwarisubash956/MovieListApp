import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Reposstoryimp/MovieRepoimpl.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final Moviesrepoimpl moviesrepoimpl;
  final int per_page = 100;
  int page = 1;
  MovieBloc({required this.moviesrepoimpl}) : super(MovieInitial()) {
    on<MovieEvent>((event, emit) async {
      if (event is MovieLoadEvent) {
        try {
          final failureorSucces =
              await moviesrepoimpl.fetchMovies(event.page, per_page);
          failureorSucces.fold(
              (failure) => emit(MoviesErrorState(
                  message: ((failure as ServerFailure).message))), (success) {
            emit(MovieLodedState(
                movies: success, hasReachedMax: success.isEmpty));
            page++;
          });
        } catch (e) {
          emit(MoviesErrorState(message: "$e"));
        }
      }
    });
  }
}
