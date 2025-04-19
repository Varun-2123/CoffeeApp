// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/about_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  final List<String> coffee_name = [
    "Americano",
    "Cappuccino",
    "Latte",
    "Espresso",
    "Macchiato",
    "Frappe",
    "Mocha",
  ];
  final Map<String, String> coffee_short_desc = {
    "Americano": "Espresso diluted with hot water.",
    "Cappuccino": "Equal parts espresso, steamed milk, and milk foam.",
    "Latte": "Espresso with lots of steamed milk and a light foam layer.",
    "Espresso": "Strong, concentrated coffee shot.",
    "Macchiato": "Espresso topped with a small dollop of milk foam.",
    "Frappe": "Iced, blended coffee often with milk and sugar.",
    "Mocha": "Espresso with chocolate and milk.",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                "assets/images/template_4.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              // search bar
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "  Search...",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: CircleAvatar(
                      radius: 28,
                      backgroundColor: const Color.fromARGB(255, 164, 105, 83),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 700,
                child: PageView(
                  children: [
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 62,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[0]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[0],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 270,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[0]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[0],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[1]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[1],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 248,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[1]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[1],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[2]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[2],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 249,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[2]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[2],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[3]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[3],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 249,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[3]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[3],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[4]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[4],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 249,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[4]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[4],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[5]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[5],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 249,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[5]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[5],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(height: 600),
                        Positioned(
                          bottom: 25,
                          left: 18,
                          child: SizedBox(
                            height: 520,
                            width: 360,
                            child: Card(
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/template_bg_2.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage: AssetImage(
                              "assets/images/${coffee_name[6]}_top.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 320,
                          left: 50,
                          child: Text(
                            coffee_name[6],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 52,
                              fontFamily: "Pacifico",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 249,
                          left: 60,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              "${coffee_short_desc[coffee_name[6]]}",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 66, 66, 66),
                                fontSize: 20,
                                fontFamily: "Quattrocento",
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 80,
                          left: 50,
                          child: SizedBox(
                            height: 55,
                            width: 300,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  181,
                                  108,
                                  13,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => AboutPage(
                                          coffee_name: coffee_name[6],
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Know More . . .",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "SpecialGothic",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
