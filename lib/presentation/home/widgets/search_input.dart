// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:

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
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // search icon
            Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
              size: 18,
            ),

            const SizedBox(
              width: 10,
            ),
            Text(
              hintText ?? '',
              style: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: 14, color: Theme.of(context).iconTheme.color),
            )
          ],
        ),
      ),
    );
  }
}
