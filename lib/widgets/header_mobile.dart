import 'package:flutter/material.dart';
import 'package:my_portfolio_website/styles/style.dart';
import 'package:my_portfolio_website/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: headerDecoration,
      child: Row(
        children: [
          // Logo
          SiteLogo(onTapChange: () {}),

          const Spacer(),

          // Menu
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),

          SizedBox(width: 14),
        ],
      ),
    );
  }
}
