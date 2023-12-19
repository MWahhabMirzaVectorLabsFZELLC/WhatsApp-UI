import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/whatsapp_chats.dart';
import 'package:whatsapp_ui/whatsapp_status.dart';
import 'package:whatsapp_ui/whatsapp_calls.dart';
import 'package:whatsapp_ui/whatsapp_icons.dart';
import 'package:whatsapp_ui/whatsapp_tabs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid || Platform.isIOS) {
    runApp(const MyApp());
  }
  else {
    exit(0);
  }

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: WhatsAppBar(),
          body: TabBarView(
              children: [
                WhatsAppChats(),
                WhatsAppStatus(),
                WhatsAppCalls()
              ]
          ),
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            onPressed: () {},
            backgroundColor: Colors.teal.shade500,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
    );
  }
}

class WhatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhatsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal.shade500,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                  "WhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              WhatsAppIcons(
                  icon: Icons.camera_alt,
                  color: Colors.white.withOpacity(0.8),
                  onTap: (){},
                  right: 20
              ),
              WhatsAppIcons(
                  icon: Icons.search,
                  color: Colors.white.withOpacity(0.8),
                  onTap: (){},
                  right: 20
              ),
              WhatsAppIcons(
                  icon: Icons.flight,
                  color: Colors.white.withOpacity(0.8),
                  onTap: (){},
                  right: 20
              ),
              WhatsAppIcons(
                  icon: Icons.more_vert,
                  color: Colors.white.withOpacity(0.8),
                  onTap: (){},
                  right: 20
              ),
            ],
          )
        ],
      ),
      bottom: TabBar(
        labelColor: Colors.teal.shade500,
        indicatorColor: Colors.white,
        indicatorWeight: 4,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        indicatorPadding: EdgeInsets.only(bottom: 5),
        unselectedLabelColor: Colors.white.withOpacity(0.7),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20
        ),
        splashBorderRadius: BorderRadius.circular(30),
        tabs: [
          WhatsAppTabs(
            text: "Chats",
          ),
          WhatsAppTabs(
            text: "Status",
          ),
          WhatsAppTabs(
            text: "Calls",
          ),
        ],
      ),
    );
  }
}
