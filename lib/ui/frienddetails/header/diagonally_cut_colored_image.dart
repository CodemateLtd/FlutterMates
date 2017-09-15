import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class DiagonallyCutColoredImage extends StatelessWidget {
  DiagonallyCutColoredImage(this.image, {@required this.color});

  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return new ClipPath(
      clipper: new DiagonalClipper(),
      child: new DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: new BoxDecoration(color: color),
        child: image,
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 50.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}