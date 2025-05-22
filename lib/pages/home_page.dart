// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/skill_items.dart';
import 'package:my_portfolio_website/widgets/drower_mobile.dart';
import 'package:my_portfolio_website/widgets/header_desktop.dart';
import 'package:my_portfolio_website/widgets/header_mobile.dart';
import 'package:my_portfolio_website/widgets/main_desktop.dart';
import 'package:my_portfolio_website/widgets/main_desktop_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _desktopWidth = 600.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColors.scaffoldBG,
          endDrawer:
              constraints.maxWidth >= _desktopWidth ? null : DrowerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Main Header
              if (constraints.maxWidth >= _desktopWidth)
                HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              SizedBox(height: 40),

              // Main Desktop
              if (constraints.maxWidth >= 400 &&
                  constraints.maxWidth >= _desktopWidth)
                MainDesktop()
              else
                MainDesktopMobile(),

              // Skills Section
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: _desktopWidth,
                color: CustomColors.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Title
                    Text(
                      'What I can Do',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.whitePrimary,
                      ),
                    ),

                    SizedBox(height: 32),

                    // Platforms and Skills
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Platforms
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 450),
                          child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            children: [
                              for (int i = 0; i < platformItems.length; i++)
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: CustomColors.bgLight2,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 12,
                                    ),
                                    leading: Image.asset(
                                      platformItems[i]['img'],
                                      width: 26,
                                    ),
                                    title: Text(platformItems[i]['title']),
                                  ),
                                ),
                            ],
                          ),
                        ),

                        SizedBox(width: 50),

                        // Skills
                        Wrap(
                          spacing: 5.0,
                          runSpacing: 5.0,
                          children: [
                            for (int i = 0; i < skillItems.length; i++)
                              Chip(
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 16.0,
                                ),
                                label: Text(skillItems[i]['title']),
                                avatar: Image.asset(skillItems[i]['img']),
                                backgroundColor: CustomColors.bgLight2,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Projects Section
              Container(
                width: double.maxFinite,
                height: 500,
                child: Center(child: Text('Projects')),
              ),

              // Contact Section
              Container(
                width: double.maxFinite,
                height: 500,
                color: CustomColors.bgLight2,
                child: Center(child: Text('Contact')),
              ),

              // Footer Section
              Container(
                width: double.maxFinite,
                height: 500,
                child: Center(child: Text('Footer')),
              ),
            ],
          ),
        );
      },
    );
  }
}
