import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';

final userdata = GetStorage();
String myfirstname = '${userdata.read('firstname'.trim())}';
String mylastname = '${userdata.read('lastname'.trim())}';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CardProfile(),
          ProfileReport(),
          SizedBox(
            height: 10,
          ),
          ProfileSettings(),
        ],
      )),
      bottomNavigationBar: bottom_nav(),
      floatingActionButton: floatactions(),
      drawer: SideNavigationBar(),
    );
  }

  Widget CardProfile() => Card(
        child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      child: Text(
                        myfirstname[0] + mylastname[0],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.blue.shade900),
                      ),
                      radius: 40,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${userdata.read('firstname')} ${userdata.read('lastname')}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      Text(
                        '${userdata.read('email')}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "10",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Accounts",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "24",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Categories",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget ProfileReport() => Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(
            "Report",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
            child: Icon(Icons.bar_chart),
          ),
          subtitle: Text(
            "See all available reports",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ));

  Widget ProfileSettings() => Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: CircleAvatar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.settings),
          ),
          subtitle: Text(
            "Default currency, notification etc",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ));
}
