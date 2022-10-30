import 'package:flutter/material.dart';

class ListOfThings extends StatefulWidget {
  const ListOfThings({Key? key}) : super(key: key);

  @override
  State<ListOfThings> createState() => _ListOfThingsState();
}

class _ListOfThingsState extends State<ListOfThings> {
  var places = {'море 1': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYuO42QxEukBKUHGtlV73Z5SjLNVZEa43lwOs6GPS4sQ&s',
  'море 2' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRosM-bldLxYzDU6j_zdE_msDrQF-v61_gAnaW57mGvZA&s'};
  var listPlaces = ['море 1', 'море 2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('routes'),),
      body:ListView.builder( itemCount: places.length,
          itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(listPlaces[index]),
          onTap: () {

           Navigator.pushNamed(context, '/page-details', arguments: [listPlaces[index],places[listPlaces[index]]]);
          },
        );
      }
    ),
    );
  }
}
