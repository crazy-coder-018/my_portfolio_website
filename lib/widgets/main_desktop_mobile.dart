import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constants/colors.dart';

class MainDesktopMobile extends StatelessWidget {
  const MainDesktopMobile({super.key});

  final _desktopWidth = 600.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.0),
      height: _desktopWidth / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Column
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text ( Hi I am Hammad Butt A Flutter Developer )
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: CustomColors.yellowSecondary,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      height: 1.5,
                      letterSpacing: 1,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Hi\n',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.whitePrimary,
                          height: 1.5,
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: 'I am ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.whitePrimary,
                          height: 1.5,
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(text: 'Hammad Butt\n'),
                      TextSpan(
                        text: 'A Flutter Developer',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.whitePrimary,
                          height: 1.5,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24),

                // Elevatid Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.yellowPrimary,
                    animationDuration: Duration(seconds: 1),
                    elevation: 14,
                    shadowColor: Colors.black,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: BorderSide(color: CustomColors.yellowSecondary),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Get in touch',
                      style: TextStyle(
                        color: CustomColors.scaffoldBG,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 32),

          Image.asset(
            'lib/image/Development-cuate.png',
            height: 200,
            width: 450,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
