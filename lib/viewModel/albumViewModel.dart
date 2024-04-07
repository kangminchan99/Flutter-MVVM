import 'package:flutter/material.dart';
import 'package:flutter_mvvm/model/album.dart';
import 'package:flutter_mvvm/repository/albumRepository.dart';

class AlbumViewModel with ChangeNotifier {
  late final AlbumRepository _albumRepository;
  List<Album> _albumList = List.empty(growable: true);
  List<Album> get albumList => _albumList;

  AlbumViewModel() {
    // AlbumRepository 인스턴스 생성 후 _getAlbumList가져오기
    _albumRepository = AlbumRepository();
    _getAlbumList();
  }

  Future<void> _getAlbumList() async {
    _albumList = await _albumRepository.getAlbumList();
    notifyListeners();
  }
}
