import 'package:flutter/material.dart';

class WelcomeNote extends StatefulWidget {
  const WelcomeNote({super.key});

  @override
  State<WelcomeNote> createState() => _WelcomeNoteState();
}

class _WelcomeNoteState extends State<WelcomeNote> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Image.asset(
                      "assets/images/banner1.jpeg",
                      // height: 0.0,
                      width: 300.0,
                    ),

                    new Image.asset("assets/images/banner.jpeg",
                        // height: 140.0,
                        width: 70.0),

                    // Text("this is add"),
                  ],
                ),

                new Image.asset("assets/images/celebration.jpeg",
                    // height: 140.0,
                    width: 700.0),
                // SizedBox(
                //   height: 20.0,
                // ),
                Text(
                  "Thank You!",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800]),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Your loan will be disbursed shortly.",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[800]),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(top: 12.0),
                //       child: Align(
                //         alignment: Alignment.centerLeft,
                //         child: Text(
                //           "Your loan will be disbursed shortly!",
                //           style: TextStyle(
                //               fontSize: 24, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
