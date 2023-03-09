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
  int pageindex = 0;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.pageindex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: egrey,
        elevation: 25,
        selectedItemColor: egreen,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(fontFamily: "Oswald"),
        selectedIconTheme: const IconThemeData(color: egreen),
        unselectedIconTheme: const IconThemeData(color: egrey),
        onTap: (data) {
          setState(() {
            widget.pageindex = data;
          });

        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: "Analysis"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: widget.pages[widget.pageindex],
    );
  }
}
