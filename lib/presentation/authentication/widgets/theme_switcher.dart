import 'package:flutter/material.dart';
import 'package:github_issues/domain/objects/app_strings.dart';
import 'package:github_issues/presentation/authentication/widgets/theme_radio.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({
    Key? key,
    required this.onThemeTapped,
    required this.currentTheme,
  }) : super(key: key);

  final Function({
    required ThemeMode themeMode,
  }) onThemeTapped;

  final ThemeMode currentTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ThemeRadio(
          text: lightThemeText,
          onTap: () => onThemeTapped(themeMode: ThemeMode.light),
          isSelected: currentTheme == ThemeMode.light,
        ),
        ThemeRadio(
          text: darkThemeText,
          onTap: () => onThemeTapped(themeMode: ThemeMode.dark),
          isSelected: currentTheme == ThemeMode.dark,
        ),
        ThemeRadio(
          text: systemThemeText,
          onTap: () => onThemeTapped(themeMode: ThemeMode.system),
          isSelected: currentTheme == ThemeMode.system,
        ),
      ],
    );
  }
}
