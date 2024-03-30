import 'package:fashiondruic/utils/colors.dart';
import 'package:flutter/material.dart';

class FashionBottomNavigationBar extends StatelessWidget {
  const FashionBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double marginWidth = 24;
    return Container(
      width: width - (2 * marginWidth),
      margin: EdgeInsets.only(left: marginWidth, right: marginWidth),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white60, blurRadius: 10, offset: Offset(16, 16))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(36))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.home,
              size: 24,
              color: darkGrey,
            ),
          ),
          GestureDetector(
            child: const Icon(
              Icons.notifications,
              size: 24,
              color: darkGrey,
            ),
          ),
          GestureDetector(
            child: const Icon(
              Icons.shopping_bag,
              size: 24,
              color: darkGrey,
            ),
          ),
          GestureDetector(
            child: const Icon(
              Icons.settings_suggest,
              size: 24,
              color: darkGrey,
            ),
          )
        ],
      ),
    );
  }
}
