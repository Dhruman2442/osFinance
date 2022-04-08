import 'package:flutter/material.dart';

List<String> Category = [
  'Another Icon',
  'Apple',
  'Birds',
  'Car',
  'Cats',
  'Custom Icon',
  'Docs',
  'Dog',
  'Donated',
  'Edited Icon',
  'Education',
  'Food',
  'Grocery',
  'Help',
  'Job',
  'Lend',
];
final icons = [
  Icons.wheelchair_pickup,
  Icons.help,
  Icons.biotech_rounded,
  Icons.directions_car,
  Icons.help,
  Icons.dashboard_customize,
  Icons.document_scanner,
  Icons.help,
  Icons.monetization_on_rounded,
  Icons.icecream_outlined,
  Icons.book_outlined,
  Icons.help,
  Icons.help,
  Icons.help,
  Icons.help,
  Icons.help,
];

class listViewCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Category.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: ListTile(
                title: Text(
                  Category[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(
                    icons[index],
                    color: Colors.blue,
                  ),
                )),
          );
        },
      ),
    );
  }
}
