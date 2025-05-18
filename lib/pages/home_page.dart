// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';
import 'package:my_portfolio_website/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColors.scaffoldBG,
      endDrawer: Drawer(
        backgroundColor: CustomColors.scaffoldBG,
        child: ListView(
          children: [
            for (int i = 0; i < navIcons.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 0.0,
                  ),
                  leading: Icon(navIcons[i]),
                  title: Text(navTitles[i]),
                  titleTextStyle: TextStyle(
                    color: CustomColors.whitePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Main
          // HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
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
