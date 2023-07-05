import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult:            moviedb.adult,
      backdropPath:     ( moviedb.backdropPath != '' )
        ? 'https://image.tmdb.org/t/p/w500/${ moviedb.backdropPath }'
        : 'https://t4.ftcdn.net/jpg/02/51/95/53/360_F_251955356_FAQH0U1y1TZw3ZcdPGybwUkH90a3VAhb.jpg',
      genreIds:         moviedb.genreIds.map( ( e ) => e.toString() ).toList(),
      id:               moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle:    moviedb.originalTitle,
      overview:         moviedb.overview,
      popularity:       moviedb.popularity,
      posterPath:       ( moviedb.posterPath != '' )
        ? 'https://image.tmdb.org/t/p/w500/${ moviedb.posterPath }'
        : 'no-poster',
        //'https://t4.ftcdn.net/jpg/02/51/95/53/360_F_251955356_FAQH0U1y1TZw3ZcdPGybwUkH90a3VAhb.jpg',
      releaseDate:      moviedb.releaseDate,
      title:            moviedb.title,
      video:            moviedb.video,
      voteAverage:      moviedb.voteAverage,
      voteCount:        moviedb.voteCount);
}
