import 'dart:convert';

import 'package:dio/dio.dart';

final dio = Dio();

class Network{

  Future<dynamic> getPost(String url) async {
    print("REQUESTS SEND");
    var response = await dio.get(url);
    print(response.data);
    return jsonDecode(response.data!);
  }

}

void main() async {
  var url = Uri.parse('https://api.forefront.ai/v1/chat/completions');

  var payload = {
    "model": "forefront/MonadGPT-chatml",
    "messages": [
      {
        "role": "user",
        "content": "پایتون چیست؟ به فارسی پاسخ بده"
      }
    ],
    "max_tokens": 128,
    "temperature": 0.5,
  };

  var headers = {
    "content-type": "application/json",
    "authorization": "Bearer sk-VNEkv28e7nzT3ZO39tHZtOfvLmMbC41o"
  };

  try {
    var dio = Dio();
    var response = await dio.post(
      url.toString(),
      data: payload,
      options: Options(
        headers: headers,
      ),
    );
    print(response.data);
  } catch (error) {
    print(error);
  }
}
