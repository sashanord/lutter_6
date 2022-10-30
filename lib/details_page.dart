import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var message = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(title: Text(message[0]),),
      body: Center(child: Image.network(message[1]),),
    );
  }
}
