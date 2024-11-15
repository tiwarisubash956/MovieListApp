import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Core/Database/DatabaseService.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Presentation/bloc/movie_bloc.dart';
import 'package:movielistapp/Features/Widgets/CustomDrawer.dart';

/// The [MoviesPage] widget displays a list of movies fetched from an API.
/// It uses [MovieBloc] for state management and supports infinite scrolling
/// to load more movies as the user scrolls down.
@RoutePage()
class MoviesPage extends StatefulWidget {
  /// Controller for handling the search input from the user.
  final TextEditingController searchController = TextEditingController();

  /// Constructor for [MoviesPage].
  MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

/// State class for [MoviesPage].
class _MoviesPageState extends State<MoviesPage> {
  /// Instance of [DatabaseService] for local caching (currently unused).
  final DatabaseService dbservices = DatabaseService.instance;

  /// Controller to detect when the user scrolls to the bottom of the list.
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // Add listener to the scroll controller to load more movies on scroll.
    _scrollController.addListener(_onScroll);

    // Trigger initial fetch of movies when the page loads.
    context.read<MovieBloc>().add(MovieLoadEvent(page: 1));
  }

  /// Callback function that triggers when the user scrolls to the bottom.
  /// Fetches the next page of movies using [MovieBloc].
  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      final bloc = context.read<MovieBloc>();
      bloc.add(MovieLoadEvent(page: bloc.page++)); // Load the next page.
    }
  }

  @override
  void dispose() {
    // Dispose the scroll controller to free up resources.
    _scrollController.dispose();
    super.dispose();
  }

  /// Builds the main UI of the [MoviesPage].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.red, // Change the drawer icon color here
        ),
        backgroundColor: Colors.black,
        actions: [
          const Text(
            "MovieFlex",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).devicePixelRatio * 65,
              height: MediaQuery.of(context).devicePixelRatio * 12,
              child: SearchBar(
                // Clears the search input when the user clicks outside.
                onTapOutside: (event) {
                  widget.searchController.clear();
                },
                // Navigates to the search results page when submitted.
                onSubmitted: (value) {
                  context.router.push(
                      SearchRoute(searchTerm: widget.searchController.text));
                },
                hintText: "Search Movies",
                controller: widget.searchController,
                trailing: [
                  IconButton(
                    onPressed: () {
                      context.router.push(SearchRoute(
                          searchTerm: widget.searchController.text));
                    },
                    icon: const Icon(Icons.search),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          // Show a loading indicator when movies are being fetched.
          if (state is MovieLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          // Display the list of movies if successfully loaded.
          else if (state is MovieLodedState) {
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
                  // Navigate to the movie details page on double tap.
                  onDoubleTap: () {
                    context.router.push(MovieDetailRoute(movie: movie));
                  },
                  child: Stack(
                    children: [
                      // Cached network image for displaying movie posters.
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
                            // Display movie title.
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
                            // Display movie description.
                            Text(
                              movie.summary ?? "No Description",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          // Display an error message if there was an error loading movies.
          else if (state is MoviesErrorState) {
            return Center(child: Text(state.message));
          }

          // Default fallback when no state is matched.
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
