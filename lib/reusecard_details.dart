import 'package:flutter/material.dart';


class ReuseWidget extends StatelessWidget {
  final Color kcolor;
  final Widget childCard;
  ReuseWidget({required this.kcolor, required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: kcolor),
    );
  }
}
