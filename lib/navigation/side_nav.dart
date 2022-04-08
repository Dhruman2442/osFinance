import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loginuicolors/account/account_expense.dart';
import 'package:loginuicolors/categories/categories.dart';
import 'package:loginuicolors/home_page/login.dart';
import 'package:loginuicolors/home_page/register.dart';
import 'package:loginuicolors/reports/reports_types.dart';
import 'package:loginuicolors/settings/settings_types.dart';

final userdata = GetStorage();

enum ConfirmAction { Cancel, Accept }

class SideNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 35,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "${userdata.read('firstname')} ${userdata.read('lastname')}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '${userdata.read('email')}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => OverViewPage()));
            },
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: const Text("Home",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AccountExpense()));
            },
            leading: const Icon(
              Icons.account_balance_wallet_rounded,
              color: Colors.green,
            ),
            title: const Text("Account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoriesList()));
            },
            leading: const Icon(
              Icons.category,
              color: Colors.blue,
            ),
            title: const Text("Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ReportTypes()));
            },
            leading: const Icon(
              Icons.bar_chart,
              color: Colors.yellow,
            ),
            title: const Text("Report",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingTypes()));
            },
            leading: const Icon(
              Icons.settings,
              color: Colors.brown,
            ),
            title: const Text("Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyLogin()));
            },
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: Colors.grey,
            ),
            title: const Text(
              "About Piggy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                      child: Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image.asset(
                              //   'assets/logo.png',
                              //   width: 20,
                              //   height: 20,
                              //   fit: BoxFit
                              //       .contain,
                              // ),
                              Text(
                                "PIGGY",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: 320.0,
                              ),
                              Text(
                                "Apache Licenses",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                              Text(
                                "@Developed by XYZ",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),

                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "View Lincenses",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(ConfirmAction.Cancel);
                                    },
                                    child: Text(
                                      "Close",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
