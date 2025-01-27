import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// General widget for shimmer loading
class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget.rectangular({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
