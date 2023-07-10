import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/customer_info.dart';
import 'package:saraswat_pl/pages/drawer.dart';
import 'package:saraswat_pl/pages/otp.dart';
import 'package:saraswat_pl/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerPage(),
      routes: {
        // MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.otpRoute: (context) => OTPValidation(),
        MyRoutes.infoRoute: (context) => CustomerInformation(),
      },
    );
  }
}
