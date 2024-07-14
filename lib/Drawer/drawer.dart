import 'package:flutter/material.dart';
import 'package:pbl3_cbd/Components/Record/Record.dart';
import 'package:pbl3_cbd/Components/Analysis/Statistics.dart';
import 'package:pbl3_cbd/Components/Budget/Budget.dart';
import 'package:pbl3_cbd/Components/Goal/Goal.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Record'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecordScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Analysis'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Statistics()),
              );
            },
          ),
          ListTile(
            title: Text('Budget'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BudgetScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Goal'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoalPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
