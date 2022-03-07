import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cloud Kitchen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child:
              Text("Home Page", style: Theme.of(context).textTheme.headline3),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.person_add),
          onPressed: () => Navigator.popAndPushNamed(context, '/login')),
    );
  }
}
