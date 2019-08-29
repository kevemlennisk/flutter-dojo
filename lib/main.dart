import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/repositories_page.dart';
import 'package:my_app/repository_details.dart';

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
