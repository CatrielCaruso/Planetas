import 'package:flutter/material.dart';

import 'package:planets/src/service/pages/initial.dart';
import 'package:planets/src/service/pages/planetPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema Solar',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Initial(),
        'mercurio': (BuildContext context) => PlanetPage(),
      },
    );
  }
}
