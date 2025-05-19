// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/widgets/drower_mobile.dart';
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
      endDrawer: DrowerMobile(),
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
