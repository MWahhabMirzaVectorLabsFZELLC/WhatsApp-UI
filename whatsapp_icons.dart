import 'package:flutter/material.dart';

class WhatsAppIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final double? right;
  const WhatsAppIcons({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.right
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: right ?? 0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Icon(
            icon,
            color: color,
          ),
        ),
      )
    );
  }
}
