import 'package:flutter/material.dart';

class WhatsAppTabs extends StatelessWidget {
  final String text;
  const WhatsAppTabs({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: text,
    );
  }
}
