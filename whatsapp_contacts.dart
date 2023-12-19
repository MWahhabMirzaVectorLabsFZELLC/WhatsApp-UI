import 'package:flutter/material.dart';

class WhatsAppContacts extends StatelessWidget {
  final String imageUrl, contact, message, date;

  const WhatsAppContacts({
    super.key,
    required this.imageUrl,
    required this.contact,
    required this.message,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: width,
        height: 75,
        color: Colors.white,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                         contact,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      Text(
                        message,
                        style: TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontSize: 18
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    date,
                    style: TextStyle(
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
