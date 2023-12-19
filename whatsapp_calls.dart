import 'package:flutter/material.dart';

class WhatsAppCalls extends StatelessWidget {
  const WhatsAppCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top: 275, bottom: 275, right: 125, left: 125),
          child: Container(
            height: 25,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
                  child: Icon(
                    Icons.add_ic_call_rounded,
                    color: Colors.teal.shade500,
                    size: 100,
                  )
              ),
            ),
          ),
        )
    );
  }
}
