import 'package:flagify/core/colors/colors.dart';
import 'package:flagify/core/theme/theme.dart';
import 'package:flutter/material.dart';

class WidgetErrorView extends StatelessWidget {
  final String errorMessage;
  final void Function() onRetry;
  const WidgetErrorView(
      {super.key, required this.errorMessage, required this.onRetry});

  bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/error_image.png"),
        SizedBox(height: 10),
        Text(errorMessage, style: textTheme.bodyLarge),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: onRetry,
            child: Text("Retry",
                style: textTheme.bodyLarge!.copyWith(
                    color: isDarkMode(context) ? kBlackColor : kWhiteColor)))
      ]),
    );
  }
}
