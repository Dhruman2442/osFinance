import 'package:flutter/material.dart';
import 'package:loginuicolors/listview/listview_categories.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Category",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [listViewCategory()],
        ),
        drawer: SideNavigationBar(),
        bottomNavigationBar: bottom_nav(),
        floatingActionButton: floatactions(),
      ),
    );
  }
}
