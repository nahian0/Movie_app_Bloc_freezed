import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/Homepage/presantation/home_page.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
    HomePage.routeName => MaterialPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => sl<MovieListBloc>()
          ..add(const MovieListEvent.getNowShowingMovies())
          ..add(const MovieListEvent.getPopularMovies()),
        child: const HomePage(),
      ),
    ),
    (_) => MaterialPageRoute(
    builder: (_) => const Scaffold(
    body: Center(
    child: Text('Error'),
    ),
    ),
    )
  };
  }
}
