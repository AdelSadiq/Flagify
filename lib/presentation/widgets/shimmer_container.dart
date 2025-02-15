import 'package:flagify/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        separatorBuilder: (context, index) => SizedBox(height: 5),
        itemBuilder: (BuildContext context, int index) {
          return Shimmer.fromColors(
            baseColor: kGreyColor.withOpacity(0.3),
            highlightColor: kWhiteColor.withOpacity(0.2),
            child: Container(
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kCardGradient1Color,
                          kCardGradient2Color,
                          kCardGradient3Color
                        ]),
                    borderRadius: BorderRadius.circular(12))),
          );
        });
  }
}
