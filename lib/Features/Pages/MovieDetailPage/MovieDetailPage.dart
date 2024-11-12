import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';

/// `MovieDetailPage` displays detailed information about a selected movie.
/// This page shows the movie's image, name, rating, schedule time,
/// summary, and genres.
@RoutePage()
class MovieDetailPage extends StatefulWidget {
  /// The [movie] object contains all the details to be displayed on this page.
  final MovieModel movie;

  /// Constructor for the `MovieDetailPage`.
  const MovieDetailPage({super.key, required this.movie});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    // Retrieve the movie rating; defaults to 1.0 if not provided.
    final movieRating = widget.movie.rating ?? 1.0;

    return Scaffold(
      // AppBar configuration with a centered title.
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Movie Detail",
            style: GoogleFonts.breeSerif(
              textStyle: const TextStyle(
                fontSize: 20,
                color: Colors.red,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,

      /// Main content of the page wrapped in a [SingleChildScrollView]
      /// to make it scrollable if the content overflows.
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Displaying the movie's image using `CachedNetworkImage`.
            /// Fallbacks to a placeholder if the image fails to load.
            CachedNetworkImage(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
              imageUrl: widget.movie.imageMedium ?? "",
            ),

            /// Section displaying the movie's name and its rating.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Movie name displayed with a specific font style.
                  Expanded(
                    child: Text(
                      widget.movie.name,
                      style: GoogleFonts.breeSerif(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  // Movie rating represented using `RatingBarIndicator`.
                  RatingBarIndicator(
                    rating: movieRating,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),

            /// Section displaying the movie's schedule time.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.watch,
                    size: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    widget.movie.scheduleTime ?? "",
                    style: GoogleFonts.breeSerif(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// Summary section with a heading and content.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Text(
                "Summary:",
                style: GoogleFonts.breeSerif(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                widget.movie.summary ?? "No summary available.",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  shadows: [
                    Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 2,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),

            /// Section displaying the genres of the movie.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Genres:",
                      style: GoogleFonts.breeSerif(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      widget.movie.genres.isNotEmpty
                          ? "${widget.movie.genres[0]} , ${widget.movie.genres[1]}"
                          : "No genre available.",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        shadows: [
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            blurRadius: 2,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
