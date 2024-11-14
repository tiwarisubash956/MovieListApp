import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Features/Pages/SearchScreen/Presentation/bloc/search_bloc.dart';

@RoutePage()  // This annotation marks the page for AutoRoute navigation
// ignore: must_be_immutable
class SearchScreen extends StatefulWidget {
  final TextEditingController searchController = TextEditingController();
  String searchTerm;

  // Constructor accepting a searchTerm to initialize the screen
  SearchScreen({super.key, required this.searchTerm});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Tracks the current page for pagination
  int page = 1;

  // ScrollController used for detecting when the user scrolls to the end of the list
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Trigger the search when the screen is loaded with the initial search term
    context.read<SearchBloc>().add(
        SerachMovieEvent(page: 1, search_term: widget.searchTerm ?? ""));
  }

  // Clean up the ScrollController when the widget is disposed
  @override
  void dispose() {
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
            // On search submit, trigger a new search with the current text in the search field
            onSubmitted: (value) {
              context.read<SearchBloc>().add(SerachMovieEvent(
                  page: 2, search_term: widget.searchController.text));
            },
            hintText: "Search Movies", // Placeholder text for the search bar
            controller: widget.searchController,  // Set the controller to handle text input
            trailing: [
              IconButton(
                onPressed: () {
                  context.read<SearchBloc>().add(SerachMovieEvent(
                      page: 2, search_term: widget.searchController.text));
                },
                icon: const Icon(Icons.search) // Search icon
              ),
            ],
          ),
        ),
      ),
      // Build the body of the screen using BlocBuilder to listen to changes in state
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          // Show a loading spinner when the state is loading
          if (state is SearchLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } 
          // Display search results in a GridView when the data is loaded
          else if (state is SearchLodedState) {
            return GridView.builder(
              cacheExtent: 500,  // Cache extent for smoother scrolling
              controller: _scrollController,  // Attach the scroll controller for pagination
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,  // One column
                childAspectRatio: 0.75,  // Adjust aspect ratio for grid items
              ),
              itemCount: state.Searchs.length,  // Number of items to display
              itemBuilder: (context, index) {
                final movie = state.Searchs[index];

                return GestureDetector(
                  onDoubleTap: () {
                    // Navigate to MovieDetailRoute on double-tap
                    context.router.push(MovieDetailRoute(movie: movie));
                  },
                  child: Card(
                    child: CachedNetworkImage(
                      imageUrl: movie.imageMedium ?? "",  // Display the movie image
                      fit: BoxFit.cover,  // Make the image cover the container
                      placeholder: (context, url) => const Text("Loading Images"),  // Placeholder while loading
                      errorWidget: (context, url, error) => const Icon(Icons.error),  // Error widget in case of failure
                    ),
                  ),
                );
              },
            );
          } 
          // Display an error message if there was an error during the search
          else if (state is SearchsErrorState) {
            return Center(child: Text(state.message));
          }
          // Return an empty widget if no relevant state is found
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

/// Show a dialog displaying information about the user (id and name)
void _showOwnerInfoDialog(BuildContext context, int UserId, String UserName) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('User Id:$UserId'),  // Display the user ID
        content: Text('Owner: $UserName'),  // Display the user name
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();  // Close the dialog when the button is pressed
            },
            child: const Text('Close'),  // Button text
          ),
        ],
      );
    },
  );
}
