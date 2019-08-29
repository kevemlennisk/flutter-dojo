import 'package:flutter/material.dart';
import 'package:my_app/repository_details.dart';

class RepositoriesPage extends StatelessWidget {
  static const kRouteName = '/repositories';
  static const kPageName = 'Respositories';

  List<Repository> _repositories;

  @override
  Widget build(BuildContext context) {
    void _goToDetailsPage() {
      Navigator.pushNamed(context, RepositoryDetailsPage.kRouteName);
    }

    final String userName = ModalRoute.of(context).settings.arguments;
    _repositories = mockedRepositories();
    return Scaffold(
        appBar: AppBar(title: Text(kPageName)),
        body: Center(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            ClipOval(
              child: Image.network(
                'https://avatars.githubusercontent.com/$userName',
                height: 130,
                width: 130,
              ),
            ),
            SizedBox(height: 10),
            Text(userName),
            Expanded(
                child: ListView.builder(
                    itemCount: _repositories.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text('${_repositories[index]._name}'),
                          onTap: _goToDetailsPage);
                    }))
          ],
        )));
  }

  List<Repository> mockedRepositories() {
    List<Repository> repositories = List();
    repositories.add(Repository('repository 1'));
    repositories.add(Repository('repository 2'));
    repositories.add(Repository('repository 3'));
    repositories.add(Repository('repository 4'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    repositories.add(Repository('repository 5'));
    return repositories;
  }
}

class Repository {
  String _name;

  Repository(this._name);

  String get name => _name;
}
