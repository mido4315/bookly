import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Shimmer.fromColors(
        baseColor: Colors.deepPurple,
        highlightColor: Colors.blueAccent,
        child: const Text(
          'Loading',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight:
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}