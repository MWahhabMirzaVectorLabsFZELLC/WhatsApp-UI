import 'package:flutter/material.dart';

class WhatsAppStatus extends StatelessWidget {
  const WhatsAppStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        color: Colors.white,
        child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
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
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.asset(
                                              "assets/vector.png",
                                              width: 70,
                                              height: 70,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 50, top: 40),
                                        child: WhatsAppPlusButton(),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 0),
                                            child: Text(
                                              "My status",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Tap to add status update",
                                            style: TextStyle(
                                                color: Colors.blueGrey.shade900,
                                                fontSize: 18
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}

class WhatsAppPlusButton extends StatelessWidget {
  const WhatsAppPlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.teal.shade500,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          child: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

