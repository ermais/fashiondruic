import 'package:fashiondruic/utils/colors.dart';
import 'package:flutter/material.dart';

class NestedCirclePainter extends CustomPainter {
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintMainCircle = Paint();
    paintMainCircle
      ..color = Colors.white.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;
    canvas.drawCircle(center, radius, paintMainCircle);

    Paint paintInnerStroke = Paint();
    paintInnerStroke
      ..color = darkGrey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..strokeMiterLimit = 3.0
      ..strokeJoin = StrokeJoin.bevel;

    double strokeRadius = size.width / 2 - 8;

    canvas.drawCircle(center, strokeRadius, paintInnerStroke);

    Paint innerCirclePaint = Paint();
    innerCirclePaint
      ..color = darkGrey
      ..style = PaintingStyle.fill;

    double innerCircleRadius = size.width / 4;

    canvas.drawCircle(center, innerCircleRadius, innerCirclePaint);
  }
}

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint
      ..color = const Color.fromRGBO(220, 197, 173, 1)
      ..style = PaintingStyle.fill;

    // Path path = Path();
    // path
    //       ..moveTo(size.width * 0.5, 0)
    //       // ..lineTo(size.width * 0.25, size.height * 0.15)
    //       ..quadraticBezierTo(0, 0, 0, size.height * 0.5)
    //       ..quadraticBezierTo(0, size.height, size.width * 0.5, size.height)
    //       ..quadraticBezierTo(
    //           size.width, size.height, size.width, size.height * 0.5)
    //       ..quadraticBezierTo(size.width, 0, size.width * 0.5, 0)
    //     // ..lineTo(size.width * 0.75, 0)
    //     ;

    // path.close();
    // canvas.drawPath(path, paint);

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CutedHeadCircleClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double length = size.height * 0.75;
    double center = size.width / 2;

    double marginHor = center * 0.35;

    double diff = size.height * 0.25;
    double cuteStart = center - marginHor;
    double verticalCenter = diff + cuteStart;
    double verticalEnd = verticalCenter + cuteStart;
    double cuteEnd = center + marginHor;

    path
          ..moveTo(0, size.height * 0.25)
          // ..lineTo(size.width * 0.25, size.height * 0.15)
          // ..quadraticBezierTo(0, 0, 0, size.height * 0.25)
          ..lineTo(0, size.height * 0.75)
          ..quadraticBezierTo(0, size.height, size.width * 0.5, size.height)
          ..quadraticBezierTo(
              size.width, size.height, size.width, size.height * 0.75)
          ..lineTo(size.width, size.height * 0.25)
          // ..quadraticBezierTo(size.width, 0, size.width * 0.5, 0)
          ..close()
        // ..lineTo(size.width * 0.75, 0)
        ;

    // path
    //   ..moveTo(size.width * 0.25, 0)
    //   ..lineTo(size.width * 0.25, size.height * 0.15)
    //   ..quadraticBezierTo(0, size.height * 0.15, 0, size.height * 0.5)
    //   ..quadraticBezierTo(0, size.height, size.width * 0.5, size.height)
    //   ..quadraticBezierTo(
    //       size.width, size.height, size.width, size.height * 0.5)
    //   ..quadraticBezierTo(
    //       size.width, size.height * 0.15, size.width * 0.75, size.height * 0.15)
    //   ..lineTo(size.width * 0.75, 0);
    // ..lineTo(center, diff)
    // ..quadraticBezierTo(0, diff, center + diff, diff)
    // ..quadraticBezierTo(0, size.height, center, size.height)
    // ..quadraticBezierTo(size.width, size.height, size.width, center + diff);

    // ..quadraticBezierTo(cuteStart, size.height * 0.25, 0, size.height * 0.5)
    // ..quadraticBezierTo(
    //     size.width / 2, size.height, size.width, size.height * 0.5)
    // ..quadraticBezierTo(
    //     size.width, size.height * 0.25, cuteEnd, size.height * 0.25);
    // ..moveTo(cuteStart, size.height * 0.25)
    // ..quadraticBezierTo(
    //     0, size.height / 2, size.width * 0.25, size.height * 0.75)
    // ..quadraticBezierTo(
    //     size.width / 2, size.height, size.width * 0.75, size.height * 0.75)
    // ..quadraticBezierTo(size.width, size.height * 0.5, size.width * 0.75, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
