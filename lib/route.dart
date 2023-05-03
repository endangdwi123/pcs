import 'package:flutter/material.dart';
import 'package:pcs/fifthscreen.dart';
import 'package:pcs/fourthscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/fourth':
        return MaterialPageRoute(builder: (_) => FourthScreen());
      case '/fifth':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => FifthScreen(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(
          child: Text("Error Page"),
        ),
      );
    });
  }
}
