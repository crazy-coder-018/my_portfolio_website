// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBG,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, CustomColors.bgLight1],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                // Logo
                Text(
                  'C.Coder',
                  style: TextStyle(
                    color: CustomColors.yellowSecondary,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Spacer(),

                for (int i = 0; i < navTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navTitles[i],
                        style: TextStyle(
                          color: CustomColors.whitePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          // Skills
          Container(
            width: double.maxFinite,
            height: 500,
            color: CustomColors.scaffoldBG,
            child: Center(child: Text('Skills')),
          ),

          // Projects
          Container(
            width: double.maxFinite,
            height: 500,
            color: CustomColors.bgLight1,
            child: Center(child: Text('Projects')),
          ),

          // Contact
          Container(
            width: double.maxFinite,
            height: 500,
            color: CustomColors.bgLight2,
            child: Center(child: Text('Contact')),
          ),

          // Footer
          Container(
            width: double.maxFinite,
            height: 500,
            child: Center(child: Text('Footer')),
          ),
        ],
      ),
    );
  }
}
