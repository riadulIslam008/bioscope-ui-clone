import 'package:bioscope/App/Core/asstes/app_assets.dart';

class PopularMovieModel {
  final String movieName;
  final String imageLink;
  final double rating;

  PopularMovieModel({
    required this.movieName,
    this.imageLink = AppAssets.moviebg,
    required this.rating,
  });
}
