// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  final Color colorDecoration;
  final Color colorBorder;
  final String label;

  const WidgetContainer({
    Key? key,
    required this.colorDecoration,
    required this.colorBorder,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: colorDecoration,
        border: Border(
          top: BorderSide(
            width: 4,
            color: colorBorder,
          ),
          bottom: BorderSide(
            width: 4,
            color: colorBorder,
          ),
          left: BorderSide(
            width: 4,
            color: colorBorder,
          ),
          right: BorderSide(
            width: 4,
            color: colorBorder,
          ),
        ),
      ),
      child: Align(
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
