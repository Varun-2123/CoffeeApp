import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/boardingpage_gs.dart';

class Boardingpage2 extends StatefulWidget {
  const Boardingpage2({super.key});
  @override
  State<StatefulWidget> createState() => _BoardingpageState();
}

class _BoardingpageState extends State<Boardingpage2> {
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
              'assets/images/board2.jpg',
              scale: 1,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withValues(alpha: 0.45),
          ),

          Center(
            child: SizedBox(
              height: 300,
              width: 400,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to your daily brew ☕",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),

                    Text(
                      '"It always seems impossible until it\'s done."',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "DMSerif",
                      ),
                    ),
                    Text(
                      '-Nelson Mandela',
                      style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
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
                    MaterialPageRoute(builder: (context) => BoardingpageGs()),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 25,
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
