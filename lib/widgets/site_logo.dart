import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTapChange;

  const SiteLogo(this.onTapChange, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'C.Coder',
        style: TextStyle(
          color: CustomColors.yellowSecondary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
