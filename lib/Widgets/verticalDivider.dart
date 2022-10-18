import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class verticalDivider extends StatelessWidget {
  final double thikness;
  const verticalDivider({required this.thikness});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      thickness: thikness,
      color: Colors.grey[300],
    );
  }
}
