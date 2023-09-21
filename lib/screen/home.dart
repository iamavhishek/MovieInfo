import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movieinfo/screen/movies/movie_home.dart';
import 'package:movieinfo/screen/search_screen.dart';
import 'package:movieinfo/screen/tv_series/tv_series_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_outlined),
            label: 'TV Series',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedScreen = index;
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/images/logos/primary_long_logo.svg',
          semanticsLabel: 'TMDB Logo',
          fit: BoxFit.cover,
          height: 15,
        ),
      ),
      body: selectedScreen(_selectedScreen),
    );
  }

  Widget selectedScreen(int index) {
    if (index == 0) {
      return const MovieHome();
    } else if (index == 1) {
      return const SeriesHome();
    } else {
      return const SearchScreen();
    }
  }
}
