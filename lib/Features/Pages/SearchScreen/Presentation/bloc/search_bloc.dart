import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movielistapp/Core/Error/failure.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Data/Reposstoryimp/SearchRepoimpl.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final int per_page = 6;
  int page = 1;
  final SearchRepoimpl searchRepoimpl;
  SearchBloc({required this.searchRepoimpl}) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      // TODO: implement event handler

      if (event is SerachMovieEvent) {
        try {
          print("Search Term is:${event.search_term}");
          final failureorSucces = await searchRepoimpl.fetchSerachMovie(
              event.page, per_page, event.search_term);
          failureorSucces.fold(
              (failure) => emit(SearchsErrorState(
                  message: ((failure as ServerFailure).message))), (success) {
            emit(SearchLodedState(
                Searchs: success, hasReachedMax: success.isEmpty));
            page++;
          });
        } catch (e) {
          emit(SearchsErrorState(message: "$e"));
        }
      }
    });
  }
}
