import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/boardingpage_2.dart';

class Boardingpage1 extends StatefulWidget {
  const Boardingpage1({super.key});
  @override
  State<StatefulWidget> createState() => _Boardingpage1State();
}

class _Boardingpage1State extends State<Boardingpage1> {
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
              "assets/images/boardingpage_2_bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black54.withValues(alpha: 0.45),
          ),
          Positioned(
            top: 150,
            left: 15,
            child: SizedBox(
              height: 500,
              width: 400,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 110,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "offee is the answer to all problems.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontFamily: "SpecialGothic",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 45,
            child: SizedBox(
              height: 55,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 181, 108, 13),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Boardingpage2()),
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SpecialGothic",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
