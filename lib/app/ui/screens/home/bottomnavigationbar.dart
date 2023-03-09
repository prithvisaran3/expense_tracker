import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);
  final List<Widget> pages = [
    Container(
      child: Center(child: Text("Home")),
    ),
    Container(
      child: Center(child: Text("Expense")),
    ),
    Container(
      child: Center(child: Text("Add")),
    ),
    Container(
      child: Center(child: Text("Analysis")),
    ),
    Container(
      child: Center(child: Text("Settings")),
    ),
  ];
  int pageindex = 2;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        color: ePrimaryColor,
        backgroundColor: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        index: widget.pageindex,
        onTap: (data) {
          setState(() {
            widget.pageindex = data;
          });
        },
        items: const [
          Icon(
            Icons.home,
            color: eblack,
            size: 30,
          ),
          Icon(
            Icons.analytics_outlined,
            color: eblack,
            size: 30,
          ),
          Icon(
            Icons.add,
            color: eblack,
            size: 40,
          ),
          Icon(
            Icons.calendar_month,
            color: eblack,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: eblack,
            size: 30,
          ),
        ],
      ),
      body: widget.pages[widget.pageindex],
    );
  }
}
