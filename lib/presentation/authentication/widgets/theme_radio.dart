import 'package:flutter/material.dart';
import 'package:lucid_components/colors.dart';

class ThemeRadio extends StatelessWidget {
  const ThemeRadio({
    Key? key,
    required this.text,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 45,
      color: isSelected!
          ? secondaryColor.withOpacity(0.2)
          : greyTextColor.withOpacity(0.2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // the radio
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(
                width: 1,
                color: Theme.of(context).dividerColor,
              ),
            ),
            child: Center(
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected! ? secondaryColor : greyTextColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          )
        ],
      ),
    );
  }
}
