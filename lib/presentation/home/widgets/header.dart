import 'package:flutter/material.dart';
import 'package:github_issues/presentation/theme/text_styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.firstName,
    this.height = 300,
  }) : super(key: key);

  final String firstName;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hey, $firstName',
                style: headerStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                DateTime.now().toUtc().toString(),
                style: headerStyle,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
