import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/homepage.dart';

class BoardingpageGs extends StatefulWidget {
  const BoardingpageGs({super.key});
  @override
  State<StatefulWidget> createState() => BoardingpageGsState();
}

class BoardingpageGsState extends State<BoardingpageGs> {
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
              'assets/images/get_bg.jpg',
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
              height: 400,
              width: 400,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Every',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Journey',
                    style: TextStyle(
                      fontSize: 65,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Begins with a ',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Single',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Brew.',
                    style: TextStyle(
                      fontSize: 65,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 60,
            left: 45,

            child: SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 181, 108, 13),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Text(
                  'Explore!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'SpecialGothic',
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
