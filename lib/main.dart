import 'package:flutter/material.dart';
import 'package:movieinfo/screen/home.dart';

void main() {
  runApp(const MovieInfo());
}

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TMDB',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
