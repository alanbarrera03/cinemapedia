

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {

  static String theMovieDbKey = dotenv.env[ 'THE_KEY_MOVIEDB' ] ?? 'Dont exist api key';

}