import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  @override
  State<ImageWidget> createState() {
    return _ImageWidget();
  }
}

class _ImageWidget extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Image.asset("assets/images/quiz-logo.png"),
    );
  }
}
