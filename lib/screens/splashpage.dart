import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/boardingpage_1.dart';
import 'package:lottie/lottie.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});
  @override
  State<StatefulWidget> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Boardingpage1()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Image.asset(
              "assets/images/template_bg_2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(child: Lottie.asset("assets/animations/splashbutblack.json")),
        ],
      ),
    );
  }
}
