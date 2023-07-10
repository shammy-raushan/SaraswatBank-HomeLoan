import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/login.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Set this appbar height
        flexibleSpace: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
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
            ),
          ), // make container of your ads
        ),

        backgroundColor: Colors.white,
        foregroundColor: Colors.red,

        actions: [
          // Navigate to the Search Screen
          IconButton(
              // alignment: Alignment.centerLeft,
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => LoginPage())),
              icon: const Icon(Icons.search))
        ],
        title: Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginPage())),
            child: Text(
              "Login to e-banking",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            new Image.asset(
              "assets/images/img_hl.jpeg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: new Image.asset(
                "assets/images/img_hl.jpeg",
                fit: BoxFit.cover,
                width: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
