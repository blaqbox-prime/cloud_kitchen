import 'package:cloud_kitchen/styles/variables.dart';
import 'package:cloud_kitchen/views/Auth/login.dart';
import 'package:cloud_kitchen/views/home.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // Getting arguments passed in when calling Navigator.pushNamed
    final args = settings.arguments;

    // Pick route based on given name
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LogIn());
      default:
        return _errorRoute();
    }
  }

// Error Route
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: Center(
          child: Text(
            "Error: Page Not Found",
            style: TextStyle(color: appColors['warning']),
          ),
        ),
      );
    });
  }
}
