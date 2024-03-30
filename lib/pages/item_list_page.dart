import 'package:fashiondruic/components/bottom_navbar.dart';
import 'package:fashiondruic/components/fashion_item.dart';
import 'package:fashiondruic/utils/colors.dart';
import 'package:fashiondruic/utils/data.dart';
import 'package:flutter/material.dart';

getCardColor(int index) {
  if (index % 4 == 0) {
    return gridColorList[0];
  }
  if (index % 4 == 1) {
    return gridColorList[1];
  }
  if (index % 4 == 2) {
    return gridColorList[2];
  }
  if (index % 4 == 3) {
    return gridColorList[3];
  }
}

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: fashionBackgroundColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Remade",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.black,
                              fontSize: 16,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                          text: ".",
                          style: TextStyle(
                            color: colorAccent,
                            fontSize: 24,
                          ))
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("MOST",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Raleway",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2)),
                    Text("POPULAR",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Raleway",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2))
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      child: const TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 24,
                              color: Colors.black38,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black38,
                                fontFamily: "Raleway",
                                letterSpacing: 1.7,
                                fontWeight: FontWeight.w500),
                            contentPadding:
                                EdgeInsets.only(left: 8, right: 8, bottom: 2)),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: colorAccent.withOpacity(0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24))),
                        child: const Icon(
                          Icons.line_axis,
                          color: colorAccent,
                          size: 24,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: fashionList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                // crossAxisSpacing: 12,
                                // mainAxisSpacing: 12,
                                childAspectRatio: 0.82,
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          Map<String, dynamic> item = fashionList[index];
                          return FashionItem(
                              cardColor: getCardColor(index),
                              fashionImage: item["fashionImage"],
                              foundWhere: item["foundWhere"],
                              price: item["price"]);
                        }),
                  ],
                ),
              )
            ],
          ),
          const Positioned(
              left: 0, bottom: 16, child: FashionBottomNavigationBar())
        ],
      ),
    );
  }
}
