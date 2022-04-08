import 'package:flutter/material.dart';

final Expense = [
  'Account Four',
  'ADCB Salary Account',
  'Fifth Account',
  'First Test Amount',
  'First Test Account',
  'SBT',
  'Second Text Account',
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
final Expense_value = [
  '10.2 Rs.',
];
final Payment_Type = ['Saving', 'Cash'];

class listViewAccouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Expense.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: ListTile(
                title: Text(
                  Expense[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                leading: Icon(Icons.account_balance_wallet_sharp),
                trailing: Text(Expense_value[0]),
                subtitle: Text(
                  Payment_Type[0],
                  style: TextStyle(fontSize: 12),
                )),
          );
        },
      ),
    );
  }
}
