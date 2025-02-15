import 'package:flutter/material.dart';

class WidgetSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onChanged;
  final String hintText;
  final Widget prefixIcon;

  const WidgetSearchBar(
      {super.key,
      required this.searchController,
      required this.onChanged,
      required this.hintText,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
          controller: searchController,
          decoration:
              InputDecoration(hintText: hintText, prefixIcon: prefixIcon),
          onChanged: onChanged),
    );
  }
}
