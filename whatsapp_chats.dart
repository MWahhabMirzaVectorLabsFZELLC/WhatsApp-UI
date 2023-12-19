import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_contacts.dart';

class WhatsAppChats extends StatelessWidget {
  const WhatsAppChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.white,
      child: ListView(
        primary: false,
        children: const [
          WhatsAppContacts(
              imageUrl: "assets/app dev.jpg",
              contact: "Graham",
              message: "Develop your apps..",
              date: "19/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/flutter.png",
              contact: "Flutter",
              message: "Everything is a wid..",
              date: "18/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/youtube.jpg",
              contact: "Youtube",
              message: "Broadcast yourself!",
              date: "18/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/instagram.jpg",
              contact: "Instagram",
              message: "Share what you love",
              date: "18/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/facebook.png",
              contact: "Facebook",
              message: "Move fast and brea..",
              date: "11/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/whatsapp.jpg",
              contact: "Whatsapp",
              message: "Focus on the good.",
              date: "03/12/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/john.jpg",
              contact: "John",
              message: "Hello! waiting for... ",
              date: "29/11/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/flutter dev.jpg",
              contact: "Charlie",
              message: "Flutter assistant !    ",
              date: "20/11/2023"
          ),
          WhatsAppContacts(
              imageUrl: "assets/gamer.jpg",
              contact: "Alexander",
              message: "Games developer !  ",
              date: "16/11/2023"
          ),
        ],
      ),
    );
  }
}
