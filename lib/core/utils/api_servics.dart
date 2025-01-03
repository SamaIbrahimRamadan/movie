import 'package:dio/dio.dart';
// file dio package
class ApiService {
  final apiKey="api_key=c3435cfe40aeb079689227d82bf921d3";
  final _baseUrl = 'https://api.themoviedb.org/3/movie/'; //base url
  final Dio _dio; // object of package dio

  ApiService(this._dio);// حطيته جوا ال كونستركتر

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint$apiKey');
    return response.data; // return future map
    // لازم اخدها ونا بستدعي الميسود required
  }
}