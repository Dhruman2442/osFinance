import 'package:flutter/material.dart';
import 'package:loginuicolors/listview/listview_accounts.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';

class AccountExpense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OSFinance",
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Accounts",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "Your Account",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )),
                  Icon(
                    Icons.keyboard_arrow_up_outlined,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            listViewAccouts(),
          ],
        ),
        drawer: SideNavigationBar(),
        bottomNavigationBar: bottom_nav(),
        floatingActionButton: floatactions(),
      ),
    );
  }
}
