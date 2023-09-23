import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieinfo/bloc/NowPlayingMovies/now_playing_movies_bloc.dart';
import 'package:movieinfo/bloc/TopRatedMovies/top_rated_movies_bloc.dart';
import 'package:movieinfo/bloc/TrendingMovies/trending_movies_bloc.dart';
import 'package:movieinfo/bloc/UpcomingMovies/upcoming_movies_bloc.dart';
import 'package:movieinfo/model/movie_model.dart';
import 'package:movieinfo/repository/movie_repository.dart';
import 'package:movieinfo/screen/movies/movie_detail.dart';

class MovieHome extends StatefulWidget {
  const MovieHome({super.key});

  @override
  State<MovieHome> createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TrendingMoviesBloc(
            movieRepository: MovieRepository(),
          )..add(
              LoadTrendingMovieEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => TopRatedMoviesBloc(
            movieRepository: MovieRepository(),
          )..add(
              LoadTopRatedMovieEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => UpcomingMoviesBloc(
            movieRepository: MovieRepository(),
          )..add(
              LoadUpcomingMovieEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => NowPlayingMoviesBloc(
            movieRepository: MovieRepository(),
          )..add(
              LoadNowPlayingMovieEvent(),
            ),
        ),
      ],
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Movies',
                    style: GoogleFonts.nunito(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View More'))
                ],
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: BlocBuilder<TrendingMoviesBloc, TrendingMoviesState>(
                  builder: (context, state) {
                    if (state is TrendingMoviesLoadingState) {
                      return const SizedBox(
                        height: 45,
                        width: 45,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 5),
                        ),
                      );
                    } else if (state is TrendingMoviesLoadedState) {
                      List<MovieInfo> movies = state.trendingMovies;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return movieCard(context, movies, index);
                        },
                      );
                    } else {
                      return const Text("Error Occured");
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Rated Movies',
                    style: GoogleFonts.nunito(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View More'))
                ],
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: BlocBuilder<TopRatedMoviesBloc, TopRatedMoviesState>(
                  builder: (context, state) {
                    if (state is TopRatedMoviesLoadingState) {
                      return const SizedBox(
                        height: 45,
                        width: 45,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 5),
                        ),
                      );
                    } else if (state is TopRatedMoviesLoadedState) {
                      List<MovieInfo> movies = state.topRatedMovies;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return movieCard(context, movies, index);
                        },
                      );
                    } else {
                      return const Text("Error Occured");
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Now Playing Movies',
                    style: GoogleFonts.nunito(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View More'))
                ],
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: BlocBuilder<NowPlayingMoviesBloc, NowPlayingMoviesState>(
                  builder: (context, state) {
                    if (state is NowPlayingMoviesLoadingState) {
                      return const SizedBox(
                        height: 45,
                        width: 45,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 5),
                        ),
                      );
                    } else if (state is NowPlayingMoviesLoadedState) {
                      List<MovieInfo> movies = state.nowPlayingMovies;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return movieCard(context, movies, index);
                        },
                      );
                    } else {
                      return const Text("Error Occured");
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Movies',
                    style: GoogleFonts.nunito(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text('View More'))
                ],
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
                  builder: (context, state) {
                    if (state is UpcomingMoviesLoadingState) {
                      return const SizedBox(
                        height: 45,
                        width: 45,
                        child: Center(
                          child: CircularProgressIndicator(strokeWidth: 5),
                        ),
                      );
                    } else if (state is UpcomingMoviesLoadedState) {
                      List<MovieInfo> movies = state.upcomingMovies;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return movieCard(context, movies, index);
                        },
                      );
                    } else {
                      return const Text("Error Occured");
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector movieCard(
      BuildContext context, List<MovieInfo> movies, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) =>
                MovieDetailScreen(movieId: movies[index].id)),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 125,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                      'https://image.tmdb.org/t/p/w500//${movies[index].poster_path}'),
                ),
                Positioned(
                    left: 10,
                    bottom: 4,
                    child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '${movies[index].vote_average.toStringAsFixed(1).toString()}/10',
                          style: GoogleFonts.nunito(fontSize: 10),
                        ),
                      ),
                    )),
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    color: Colors.black,
                    child: movies[index].adult
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '18+',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 96, 47)),
                            ),
                          )
                        : const SizedBox(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              movies[index].title,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
