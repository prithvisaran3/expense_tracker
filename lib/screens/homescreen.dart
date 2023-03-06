import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:expense_tracker/utils/constant.dart';
import 'package:flutter/material.dart';

class ehome extends StatelessWidget {
  const ehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      bottomNavigationBar: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          child: GNav(
            backgroundColor: kPrimaryColor,
            color: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.black12,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Dashboard',
              ),
              GButton(
                icon: Icons.currency_rupee_rounded,
                text: 'Expense',
              ),


              GButton(
                icon: Icons.currency_rupee,
                text: 'Income',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
