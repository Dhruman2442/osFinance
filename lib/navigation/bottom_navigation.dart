import 'package:flutter/material.dart';
import 'package:loginuicolors/account/account_expense.dart';
import 'package:loginuicolors/account/recent_expense_analysis.dart';
import 'package:loginuicolors/home_page/login.dart';
import 'package:loginuicolors/profile/profile.dart';
import 'package:loginuicolors/transaction/transaction_details.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({Key? key}) : super(key: key);

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OverViewPage()));
                    },
                    icon: const Icon(
                      Icons.computer,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RecentExpenseAnalysis()));
                    },
                    icon: const Icon(
                      Icons.calendar_today_rounded,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AccountExpense()));
                  },
                  icon: const Icon(
                    Icons.bar_chart,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                    },
                    icon: const Icon(
                      Icons.person,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class floatactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TransactionDetails()));
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.add),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient:
                  LinearGradient(colors: [Colors.deepPurple, Colors.blue])),
        ));
  }
}
