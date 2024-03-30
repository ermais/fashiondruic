import 'dart:math';

import 'package:fashiondruic/pages/item_list_page.dart';
import 'package:fashiondruic/utils/colors.dart';
import 'package:fashiondruic/utils/paint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';

const textStyle = TextStyle(
    textBaseline: TextBaseline.ideographic,
    leadingDistribution: TextLeadingDistribution.proportional,
    color: darkGrey,
    fontSize: 28,
    letterSpacing: 2,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w700,
    height: 1.3);

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: fashionBackgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: -width * 0.55,
              left: 24,
              child: ClipPath(
                clipper: CutedHeadCircleClipper(),
                child: Center(
                  child: Container(
                    height: width * 1.6,
                    width: width * 0.8,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomPaint(
                                foregroundPainter: CustomArcPainter(),
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  // color: Colors.amber,
                                  // height: (width * 0.7) + ((width * 0.7) * 0.25),
                                  height: width * 0.8,
                                  width: width * 0.8,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: width,
                              width: width * 0.6,
                              child: const Image(
                                fit: BoxFit.cover,
                                image: AssetImage("images/bg-removed/2.png"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              left: 16,
              bottom: 32,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your".toUpperCase(),
                      style: textStyle,
                    ),
                    Text(
                      "Style Will".toUpperCase(),
                      style: textStyle,
                    ),
                    Text(
                      "tell about".toUpperCase(),
                      style: textStyle,
                    ),
                    Text(
                      "you".toUpperCase(),
                      style: textStyle,
                    )
                  ])),
          Positioned(
              right: 32,
              top: height * 0.4,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(_)=>ItemListPage()));
                },
                child: CustomPaint(
                  painter: NestedCirclePainter(),
                  child: SizedBox(
                    height: width * 0.45,
                    width: width * 0.45,
                    child: Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: ArcText(
                                radius: 40,
                                text: "explore shop & today".toUpperCase(),
                                startAngle: -pi / 1.5,
                                placement: Placement.outside,
                                textStyle: const TextStyle(
                                    color: darkGrey,
                                    letterSpacing: 1.8,
                                    fontSize: 14,
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.w700,
                                    height: 2),
                              ),
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: -45,
                              child: Text(
                                "Tap".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1.7,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Raleway"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
