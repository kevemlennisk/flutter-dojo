import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/repositories_page.dart';

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
        RepositoryDetail.kRouteName: (context) => RepositoryDetail(),
      },
    );
  }
}

class RepositoryDetail extends StatelessWidget {
  static const kRouteName = '/repositoryDetail';
  static const kPageName = 'Respository Detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kPageName)),
      body: Text("Detail"),
    );
  }
}
