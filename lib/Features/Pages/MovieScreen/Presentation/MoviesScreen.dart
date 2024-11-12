import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Core/Database/DatabaseService.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/bloc/movie_bloc.dart';

@RoutePage()
class MoviesPage extends StatefulWidget {
  final TextEditingController searchController = TextEditingController();

  MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final DatabaseService dbservices = DatabaseService.instance;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
    context.read<MovieBloc>().add(MovieLoadEvent(page: 1));
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      final bloc = context.read<MovieBloc>();
      bloc.add(MovieLoadEvent(page: bloc.page++));
    }
  }

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
          title: const Text(
            "MovieFlex",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).devicePixelRatio * 65,
                height: MediaQuery.of(context).devicePixelRatio * 12,
                child: SearchBar(
                  onTapOutside: (event) {
                    widget.searchController.clear();
                  },
                  onSubmitted: (value) {
                    context.router.push(SearchRoute(searchTerm: widget.searchController.text));
                  },
                  hintText: "Search Movies",
                  controller: widget.searchController,
                  trailing: [
                    IconButton(
                        onPressed: () {
                          context.router.push(SearchRoute(searchTerm: widget.searchController.text));
                        },
                        icon: const Icon(Icons.search))
                  ],
                ),
              ),
            ),
          ]),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is MovieLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MovieLodedState) {
            return GridView.builder(
              cacheExtent: 500,
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final movie = state.movies[index];

                return GestureDetector(
                    onDoubleTap: () {
                      context.router.push(MovieDetailRoute(movie: movie));
                    },
                    child: Stack(children: [
                      CachedNetworkImage(
                        imageUrl: movie.imageMedium ?? "",
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const Text("Loading Images"),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: 8,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Movie Title
                              Text(
                                movie.name ?? "No Title",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0.5, 0.5),
                                      blurRadius: 2,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              // Movie Description
                              Text(movie.summary ?? "No Description",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ))
                            ]),
                      )
                    ]));
              },
            );
          } else if (state is MoviesErrorState) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
