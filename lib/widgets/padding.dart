import 'package:flutter/material.dart';

class ColoredPadding extends StatelessWidget {
  const ColoredPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 8,
        color: Colors.grey.shade300,
      ),
    );
  }
}

class ColoredPaddingCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      color: Colors.grey.shade300,
    );
  }
}
