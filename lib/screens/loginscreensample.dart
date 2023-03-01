import 'package:flutter/material.dart';
import 'dart:math' as math;

class logins extends StatefulWidget {
  const logins({Key? key}) : super(key: key);

  @override
  State<logins> createState() => _loginState();
}

class _loginState extends State<logins> {
  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              Color(0x007CBFCF),
              Color(0xB316BFC4),
            ],
          ),
        ),
      ),
    );
  }
  Widget bottomWidget(double screenWidth)
  {
    return Container(
      height: 1.5*screenWidth,
      width: 1.5*screenWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(0.6,-1.1),
          end:Alignment(0.7,0.8),
          colors: [
            Color(0xDB4BE8CC),
            Color(0x005CDBCF),
          ]

        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -260,
            left: -40,
            child: topWidget(screenSize.width),
          ),
          Positioned(
            bottom: -320,
              left: -30,
              child: bottomWidget(screenSize.width)
          ),
        ],
      ),
    );
  }
}
