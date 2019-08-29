import 'package:flutter/material.dart';

class RepositoryDetailsPage extends StatelessWidget {
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
