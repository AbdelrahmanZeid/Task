import 'package:dio/dio.dart';

class GetUserService {
  final String url = 'https://jsonplaceholder.typicode.com/users';

  List<dynamic> data = [];
  Future<List<dynamic>> fetchData() async {
    Response response = await Dio().get(url);
    return data = response.data;
  }
}
