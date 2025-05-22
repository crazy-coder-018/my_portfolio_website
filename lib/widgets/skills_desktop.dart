import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';
import 'package:my_portfolio_website/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    leading: Image.asset(platformItems[i]['img'], width: 26),
                    title: Text(platformItems[i]['title']),
                  ),
                ),
            ],
          ),
        ),

        SizedBox(width: 50),

        // Skills
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Wrap(
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
          ),
        ),
      ],
    );
  }
}
