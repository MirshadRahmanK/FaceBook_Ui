import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class horizontalDivider extends StatelessWidget {
  const horizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(thickness: 10, color: Colors.grey[300]);
  }
}
