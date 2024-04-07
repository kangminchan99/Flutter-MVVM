import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/album_view.dart';
import 'package:flutter_mvvm/viewModel/albumViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<AlbumViewModel>(
        create: (context) => AlbumViewModel(),
        child: const AlbumView(),
      ),
    );
  }
}
