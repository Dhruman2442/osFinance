import 'package:flutter/material.dart';

final Expense = [
  'Account Four',
  'ADCB Salary Account',
  'Test 3 Account',
  'Test Account',
  'Third tests',
  'UAE Wallet',
  'Second Text Account',
  'Test 3 Account',
  'Test Account',
  'Third tests',
  'UAE Wallet',
];

final Date_recent = ['Tue,Aug 3, 2022', 'Wed,Aug 4, 2022'];

final Expense_value = [
  '10.2 Rs.',
];
final Payment_Type = ['Saving', 'Cash'];

class listViewRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Expense.length,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          Date_recent[0],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text("133.00Rs   -541.00Rs")),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                      title: Text(
                        Expense[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      leading: Icon(Icons.account_balance_wallet_sharp),
                      trailing: Text(Expense_value[0] + " \n 1000Rs"),
                      subtitle: Text(
                        Payment_Type[0],
                        style: TextStyle(fontSize: 12),
                      )),
                ],
              ));
        },
      ),
    );
  }
}
