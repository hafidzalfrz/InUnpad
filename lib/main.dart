import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inunpad/core/locator.dart';
import 'package:inunpad/ui/router.dart';
import 'package:inunpad/ui/views/all_views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(textTheme: globalTextTheme),
          primarySwatch: Colors.blue,
          textTheme: globalTextTheme),
      home: RegisterView(),
      onGenerateRoute: Router.generateRoute,
    );
  }
}

final globalTextTheme = TextTheme(
  body1: TextStyle(fontFamily: 'SF Pro', fontSize: 16),
);
