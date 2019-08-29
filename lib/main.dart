import 'package:flutter/material.dart';

import 'presenter/home_page.dart';
import 'presenter/repositories_page.dart';
import 'presenter/repository_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        RepositoriesPage.kRouteName: (context) => RepositoriesPage(),
        RepositoryDetailsPage.kRouteName: (context) => RepositoryDetailsPage(),
      },
    );
  }
}
