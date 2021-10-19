// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:github_issues/presentation/theme/text_styles.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
    this.hintText,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  final String? hintText;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // search icon
            const Icon(
              Icons.search,
              color: Colors.black54,
            ),

            const SizedBox(
              width: 20,
            ),
            Text(
              hintText ?? '',
              style: subtitleTextStyle.copyWith(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
