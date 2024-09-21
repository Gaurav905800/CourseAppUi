import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Widget icon;

  const CircularIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: Center(child: icon),
    );
  }
}
