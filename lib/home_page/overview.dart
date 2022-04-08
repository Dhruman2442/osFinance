import 'package:flutter/material.dart';
import 'package:loginuicolors/navigation/bottom_navigation.dart';
import 'package:loginuicolors/navigation/side_nav.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "OverView",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.calendar_today_rounded),
              SizedBox(
                width: 15,
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "January, 2020",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
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
                              "This month",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CardOverview(),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Overall",
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
                              "Recent",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CardOverview2(),
            ],
          ),
        ),
      ),
      drawer: SideNavigationBar(),
      bottomNavigationBar: bottom_nav(),
      floatingActionButton: floatactions(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget CardOverview() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 50,
                              color: Colors.pink,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text("Income"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.purple.shade100,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "10000",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 50,
                              color: Colors.blue,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text("Expense"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.blue.shade100,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "-2000",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: new CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 13.0,
                        animationDuration: 5,
                        animation: true,
                        percent: 0.7,
                        center: new Text(
                          "9999\nsaved",
                          style: new TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 15.0),
                        ),
                        progressColor: Colors.blue.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
                child: Container(color: Colors.black12),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Family Income"),
                        SizedBox(
                          height: 10,
                        ),
                        new LinearPercentIndicator(
                          width: 100.0,
                          lineHeight: 6.0,
                          percent: 0.8,
                          backgroundColor: Colors.blue.shade100,
                          progressColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Expense"),
                        SizedBox(
                          height: 10,
                        ),
                        new LinearPercentIndicator(
                          width: 100.0,
                          lineHeight: 6.0,
                          percent: 0.5,
                          backgroundColor: Colors.pink.shade100,
                          progressColor: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Saved"),
                        SizedBox(
                          height: 10,
                        ),
                        new LinearPercentIndicator(
                          width: 100.0,
                          lineHeight: 6.0,
                          percent: 0.3,
                          backgroundColor: Colors.yellow.shade100,
                          progressColor: Colors.yellow,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );

  Widget CardOverview2() => Card(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "Balance",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "145668 Rs.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 3,
                child: Container(color: Colors.black12),
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
                          "145668 Rs",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Family",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
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
                          "236",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Transaction",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
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
                          "100%",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Contribution",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
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
}
