import 'package:fashiondruic/utils/colors.dart';
import 'package:flutter/material.dart';

class FashionItem extends StatelessWidget {
  const FashionItem(
      {required this.cardColor,
      required this.fashionImage,
      required this.foundWhere,
      required this.price,
      super.key});
  final Color cardColor;
  final String fashionImage;
  final String foundWhere;
  final double price;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              // sizing: StackFit.passthrough,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16))),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AspectRatio(
                      aspectRatio: 4 / 5,
                      child: Image(
                        image: AssetImage(fashionImage),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Align(
                  // left: 0,
                  // bottom: ,
                  alignment: Alignment.bottomCenter,
                  // bottom: width * 0.43 * 0.5,
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(36))),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: darkGrey,
                          borderRadius: BorderRadius.all(Radius.circular(36))),
                      child: const Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            foundWhere,
            style: const TextStyle(
                fontFamily: "Raleway",
                fontSize: 10,
                letterSpacing: 1.7,
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "\$$price",
              style: const TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
          )
        ],
      ),
    );
  }
}
