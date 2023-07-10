import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/offer_generation.dart';

class OfferLogo extends StatefulWidget {
  const OfferLogo({super.key});

  @override
  State<OfferLogo> createState() => _OfferLogoState();
}

class _OfferLogoState extends State<OfferLogo> {
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

                new Image.asset("assets/images/hour.jpeg",
                    // height: 140.0,
                    width: 370.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Please wait while we are generating offer for your dream home",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                // next
                Container(
                  width: 480,
                  height: 40,
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => OfferGeneration())),
                        // customBorder: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
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
