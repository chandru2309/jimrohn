import 'package:flutter/material.dart';

class Intagaration extends StatelessWidget {
  final bool isActive;

  Intagaration({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 40),
      duration: Duration(microseconds: 400),
      width: isActive ? 16 : 10,
      height: 10,

      decoration: BoxDecoration(
          color: isActive ? Colors.teal : Colors.grey,
          borderRadius: BorderRadius.circular(9)),
    );
  }
}
