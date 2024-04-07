// ignore: file_names
import 'dart:convert';

import 'package:flutter_mvvm/model/album.dart';
import 'package:http/http.dart' as http;

class DataSource {
  Future<List<Album>> getAlbumList() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    // 서버에서 JSON 데이터를 가져와서 Album 객체의 리스트를 반환
    return jsonDecode(response.body)
        .map<Album>((json) => Album.fromJson(json))
        .toList();
  }
}
