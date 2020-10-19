
import 'package:fimm/models/movie_response.dart';
import 'package:fimm/networking/api_base_helper.dart';
import 'package:fimm/views/apikeys.dart';

class MovieDetailRepository {
  final String _apiKey = apiKey;

  ApiBaseHelper _helper = ApiBaseHelper();

  Future<Movie> fetchMovieDetail(int selectedMovie) async {
    final response = await _helper.get("movie/$selectedMovie?api_key=$_apiKey");
    return Movie.fromJson(response);
  }
}