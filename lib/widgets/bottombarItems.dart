import 'package:flutter/material.dart';
import 'package:hello_world/helper/colors.dart';

class BottomItems extends StatefulWidget {
  final icon;
  final active;
  const BottomItems({super.key, required this.active, required this.icon});

  @override
  State<BottomItems> createState() => _BottomItemsState();
}

class _BottomItemsState extends State<BottomItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.active
              ? kprimarycolor.withOpacity(0.1)
              : Colors.grey.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          widget.icon,
          color: widget.active ? kprimarycolor : Colors.grey,
          size: 30,
        ),
      ),
    );
  }
}
