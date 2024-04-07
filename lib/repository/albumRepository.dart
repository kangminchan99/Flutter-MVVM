import 'package:flutter_mvvm/dataSource/dataSource.dart';
import 'package:flutter_mvvm/model/album.dart';

//  Album 데이터를 가져오는 중개자 역할
class AlbumRepository {
  final DataSource _dataSource = DataSource();

  Future<List<Album>> getAlbumList() {
    return _dataSource.getAlbumList();
  }
}
