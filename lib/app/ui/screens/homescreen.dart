import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ehome extends StatelessWidget {
  const ehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: eblack,
      bottomNavigationBar: Container(
        color: ePrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          child: GNav(
            backgroundColor: ePrimaryColor,
            color: eblack,
            activeColor: eblack,
            tabBackgroundColor: eblack,
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
