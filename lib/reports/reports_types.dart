import 'package:flutter/material.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';

class ReportTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Reports",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Categorywise Accounts",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade600),
                ),
                Container(
                    child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Expenses",
                          style: TextStyle(color: Colors.purple),
                        )),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                )),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Monthly Categorwise",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey.shade600)),
                Container(
                    child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Last 3 motnhs",
                          style: TextStyle(color: Colors.purple),
                        )),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                )),
              ]),
            ],
          ),
        ),
        drawer: SideNavigationBar(),
        bottomNavigationBar: bottom_nav(),
        floatingActionButton: floatactions(),
      ),
    );
  }
}
