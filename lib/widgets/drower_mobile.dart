import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/nav_items.dart';

class DrowerMobile extends StatelessWidget {
  const DrowerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBG,
      child: ListView(
        children: [
          // For Closing the Drawer
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),

          Divider(color: CustomColors.bgLight2),

          // Menu Bar
          for (int i = 0; i < navIcons.length; i++)
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  onTap: () {},
                  hoverColor: CustomColors.bgLight1,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 0.0,
                  ),
                  leading: Icon(navIcons[i]),
                  title: Text(navTitles[i]),
                  titleTextStyle: TextStyle(
                    color: CustomColors.whiteSecondary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
