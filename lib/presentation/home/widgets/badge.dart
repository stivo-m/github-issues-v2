// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/presentation/theme/text_styles.dart';

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
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          text,
          style: subtitleTextStyle,
        ),
      ),
    );
  }
}
