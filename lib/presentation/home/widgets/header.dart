// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/presentation/home/widgets/search_input.dart';
import 'package:github_issues/presentation/theme/text_styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.firstName,
    this.height = 300,
    this.onSearchTapped,
    this.onProfileTapped,
  }) : super(key: key);

  final String firstName;
  final double? height;
  final VoidCallback? onSearchTapped;
  final VoidCallback? onProfileTapped;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.maxFinite,
      child: Column(
        children: <Widget>[
          Row(
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
                onPressed: onProfileTapped,
                icon: const Icon(Icons.person),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SearchInput(
            hintText: searchHintText,
            onTap: onSearchTapped,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
