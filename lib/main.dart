import 'package:flutter/material.dart';
import 'package:movie_app_freezed/core/di/injection.dart';
import 'package:movie_app_freezed/features/Homepage/presantation/home_page.dart';

import 'core/routing/route_genarator.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}


