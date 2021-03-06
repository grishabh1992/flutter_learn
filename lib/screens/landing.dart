import 'package:flutter/material.dart';
import 'package:flutter_learn/models/genreal.dart';
import 'package:flutter_learn/screens/api.dart';
import 'package:flutter_learn/screens/login.dart';

import 'loader.dart';

class LandingPage extends StatelessWidget {
  final List<Item> items = [
    Item.formObject({'name': 'Login Screen', 'screen': LoginScreen()}),
    Item.formObject({'name': 'Simple Routing', 'screen': LoginScreen()}),
    Item.formObject({'name': 'Named Routing', 'screen': LoginScreen()}),
    Item.formObject({'name': 'API Calling', 'screen': APIPage()}),
    Item.formObject({'name': 'Authentication', 'screen': LoginScreen()}),
    Item.formObject({'name': 'Custom Loader', 'screen': LoaderPage()}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Flutter Learning App'))),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int position) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                  title: Text(this.items[position].name.toString()),
                  onTap: () async {
                    debugPrint("Tapped");
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => this.items[position].screen));
                  }),
            );
          },
          itemCount: items.length,
        ));
  }
}
