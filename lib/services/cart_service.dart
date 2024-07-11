import 'package:dio/dio.dart';

class CartService {
  final Dio _dio = Dio();

  final String _baseUrl = 'https://vczypsfsrzaswfjsfkao.supabase.co/rest/v1/';
  final String _apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZjenlwc2Zzcnphc3dmanNma2FvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA1MDQ4MzAsImV4cCI6MjAzNjA4MDgzMH0._x1-nxwsLTvqZT2bHJpVCvffz_kGwjIn2PM8OiM2DNk';

  Future<Response> getCart() async {
    var baseUrl = '${_baseUrl}cart?select=*';
    final response = await _dio.get(
      baseUrl,
      options: Options(
        headers: {'apikey': _apiKey, 'Authorization': 'Bearer $_apiKey'},
      ),
    );

    return response;
  }

  Future<Response> deleteCart(int cartId) async {
    var baseUrl = '${_baseUrl}cart?id=eq.$cartId';
    final response = await _dio.delete(
      baseUrl,
      options: Options(
        headers: {
          'apikey': _apiKey,
          'Authorization': 'Bearer $_apiKey',
        },
      ),
    );
    return response;
  }
}
