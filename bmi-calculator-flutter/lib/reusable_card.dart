import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardhild, this.onTap});

  final Color colour;
  final Widget cardhild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardhild,
        margin: EdgeInsets.all(kEdgeInsers),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(kDecorationBorder),
        ),
      ),
    );
  }
}
