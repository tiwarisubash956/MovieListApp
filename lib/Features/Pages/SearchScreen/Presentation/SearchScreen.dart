import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/bloc/search_bloc.dart';

@RoutePage()
// ignore: must_be_immutable
class SearchScreen extends StatefulWidget {
  final TextEditingController searchController = TextEditingController();
  String searchTerm;
  SearchScreen({Key? key,required this.searchTerm}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int page = 1;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(_onScroll);
    context
        .read<SearchBloc>()
        .add(SerachMovieEvent(page: 1, search_term: widget.searchTerm ?? ""));
  }

  // void _onScroll() {
  //   if (_scrollController.position.atEdge &&
  //       _scrollController.position.pixels != 0) {
  //     final bloc = context.read<SearchBloc>();
  //     bloc.add(
  //         SerachMovieEvent(page: page++, search_term: widget.searchTerm ?? ""));
  //   }
  // }

  @override
  void dispose() {
    // Dispose of the PagingController to release resources
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: SizedBox(
            width: MediaQuery.of(context).devicePixelRatio * 100,
            height: MediaQuery.of(context).devicePixelRatio * 12,
            child: SearchBar(
              onSubmitted: (value) {
                context.read<SearchBloc>().add(SerachMovieEvent(
                    page: 2, search_term: widget.searchController.text));
              },
              hintText: "Search Movies",
              controller: widget.searchController,
              trailing: [
                IconButton(
                    onPressed: () {
                      context.read<SearchBloc>().add(SerachMovieEvent(
                          page: 2, search_term: widget.searchController.text));
                    },
                    icon: const Icon(Icons.search))
              ],
            ),
          )),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SearchLodedState) {
            return GridView.builder(
              cacheExtent: 500,
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.75,
              ),
              itemCount: state.Searchs.length,
              itemBuilder: (context, index) {
                final movie = state.Searchs[index];

                return GestureDetector(
                  onDoubleTap: () {
                    context.router.push(MovieDetailRoute(movie: movie));
                  },
                  child: Card(
                    child: CachedNetworkImage(
                      imageUrl: movie.imageMedium ?? "",
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Text("Loading Images"),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                );
              },
            );
          } else if (state is SearchsErrorState) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

void _showOwnerInfoDialog(BuildContext context, int UserId, String UserName) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('User Id:$UserId'),
        content: Text('Owner: $UserName'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}
