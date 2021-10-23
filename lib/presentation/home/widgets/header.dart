// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/domain/objects/spacers.dart';
import 'package:github_issues/presentation/home/widgets/search_input.dart';

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
          mediumVerticalSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hey, $firstName',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: onProfileTapped,
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).iconTheme.color,
                ),
              )
            ],
          ),
          mediumVerticalSizedBox,
          SearchInput(
            hintText: searchHintText,
            onTap: onSearchTapped,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          mediumVerticalSizedBox,
        ],
      ),
    );
  }
}
