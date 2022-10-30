import 'package:flutter/material.dart';

import 'details_page.dart';
import 'list_of_things.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ListOfThings(),
        '/page-details': (context) => DetailsPage(),
      },
    );
  }
}
