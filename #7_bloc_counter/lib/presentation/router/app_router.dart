import 'package:bloc_tutorial/presentation/screens/home_screen.dart';
import 'package:bloc_tutorial/presentation/screens/second_screen.dart';
import 'package:bloc_tutorial/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routesettings) {
    switch (routesettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: "Home Screen",
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(
            title: "Second Screen",
            color: Colors.redAccent,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: "Thirst Screen",
            color: Colors.greenAccent,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Page not found'),
            ),
            body: const Center(
              child: Text('404 - Page not found'),
            ),
          ),
        );
    }
  }
}
