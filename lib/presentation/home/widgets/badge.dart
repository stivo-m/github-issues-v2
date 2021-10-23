// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    required this.text,
    this.backgroundColor,
  }) : super(key: key);

  final Color? backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.all(5),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.caption?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
