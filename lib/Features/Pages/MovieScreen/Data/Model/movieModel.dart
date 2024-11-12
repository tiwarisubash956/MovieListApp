class MovieModel {
  final int id;
  final String name;
  final String? url;
  final String? language;
  final List<String> genres;
  final String? status;
  final int? runtime;
  final int? averageRuntime;
  final String? premiered;
  final String? ended;
  final String? officialSite;
  final String? scheduleTime;
  final List<String> scheduleDays;
  final double? rating;
  final int? weight;
  final String? networkName;
  final String? networkCountry;
  final String? networkTimezone;
  final String? imageMedium;
  final String? imageOriginal;
  final String? summary;
  final String? imdbId;
  final String? previousEpisodeName;

  MovieModel({
    required this.id,
    required this.name,
    this.url,
    this.language,
    required this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.scheduleTime,
    required this.scheduleDays,
    this.rating,
    this.weight,
    this.networkName,
    this.networkCountry,
    this.networkTimezone,
    this.imageMedium,
    this.imageOriginal,
    this.summary,
    this.imdbId,
    this.previousEpisodeName,
  });

  // Factory constructor to create a MovieModel from JSON
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    final show = json['show'] ?? {};
    return MovieModel(
      id: show['id'] ?? 0,
      name: show['name'] ?? 'Unknown',
      url: show['url'],
      language: show['language'],
      genres: (show['genres'] as List<dynamic>?)
              ?.map((genre) => genre as String)
              .toList() ??
          [],
      status: show['status'],
      runtime: show['runtime'],
      averageRuntime: show['averageRuntime'],
      premiered: show['premiered'],
      ended: show['ended'],
      officialSite: show['officialSite'],
      scheduleTime: show['schedule']?['time'],
      scheduleDays: (show['schedule']?['days'] as List<dynamic>?)
              ?.map((day) => day as String)
              .toList() ??
          [],
      rating: show['rating']?['average'] != null
          ? (show['rating']['average'] as num).toDouble()
          : null,
      weight: show['weight'],
      networkName: show['network']?['name'],
      networkCountry: show['network']?['country']?['name'],
      networkTimezone: show['network']?['country']?['timezone'],
      imageMedium: show['image']?['medium'],
      imageOriginal: show['image']?['original'],
      summary: show['summary'] != null
          ? show['summary'].replaceAll(RegExp(r'<[^>]*>'), '')
          : null,
      imdbId: show['externals']?['imdb'],
      previousEpisodeName: json['_links']?['previousepisode']?['name'],
    );
  }

  // Convert MovieModel to a JSON map (for storing in SQLite)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url,
      'language': language,
      'genres': genres.join(','),
      'status': status,
      'runtime': runtime,
      'averageRuntime': averageRuntime,
      'premiered': premiered,
      'ended': ended,
      'officialSite': officialSite,
      'schedule_time': scheduleTime,
      'schedule_days': scheduleDays.join(','),
      'rating': rating,
      'weight': weight,
      'network_name': networkName,
      'network_country': networkCountry,
      'network_timezone': networkTimezone,
      'image_medium': imageMedium,
      'image_original': imageOriginal,
      'summary': summary,
      'imdb_id': imdbId,
      'previous_episode_name': previousEpisodeName,
    };
  }
}
