import 'package:flutter/material.dart';
import 'package:loginuicolors/listview/listview_accounts.dart';
import 'package:loginuicolors/listview/listview_recent.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';

class RecentExpenseAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recent Expense",
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Recent",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.calendar_today_rounded),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Wed,1 Jan 2022",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey.shade300,
                child: TextField(
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                    decoration: new InputDecoration(
                      focusColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ))),
            Container(
              padding:
                  EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "21 Transaction",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Fliter",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                        ),
                        Icon(
                          Icons.filter_list_rounded,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
              child: Container(color: Colors.black12),
            ),
            listViewRecent(),
            SizedBox(
              height: 3,
              child: Container(color: Colors.black12),
            ),
          ],
        ),
        drawer: SideNavigationBar(),
        bottomNavigationBar: bottom_nav(),
        floatingActionButton: floatactions(),
      ),
    );
  }
}
