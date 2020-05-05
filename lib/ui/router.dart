import 'package:flutter/material.dart';

import 'views/all_views.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
<<<<<<< HEAD
      case 'register':
=======
      case 'auth':
>>>>>>> 46f41a9d726db97e62ce8f8ebc60721f3c0e3f94
        return MaterialPageRoute(builder: (_) => AuthView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
