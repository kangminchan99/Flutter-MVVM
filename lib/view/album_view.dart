import 'package:flutter/material.dart';
import 'package:flutter_mvvm/model/album.dart';
import 'package:flutter_mvvm/viewModel/albumViewModel.dart';
import 'package:provider/provider.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late List<Album> albumList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM')),
      body: Consumer<AlbumViewModel>(builder: (context, provider, child) {
        albumList = provider.albumList;
        return ListView.builder(
            itemCount: albumList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                child:
                    Text('${albumList[index].id}: ${albumList[index].title}'),
              );
            });
      }),
    );
  }
}
