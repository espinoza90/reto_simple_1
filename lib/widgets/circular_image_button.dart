import 'package:flutter/material.dart';

class CircularImageButton extends StatelessWidget {
  final String imageName;
  final double width;

  const CircularImageButton({this.imageName, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: Image.asset(
        imageName,
        width: width,
      ),
    );
  }
}
