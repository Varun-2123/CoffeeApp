// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/about_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  String toTitleCase(String text) {
    if (text.isEmpty) return text;
    return text
        .split(' ')
        .map(
          (word) =>
              word.isNotEmpty
                  ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
                  : '',
        )
        .join(' ');
  }

  final TextEditingController _controller = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "  Search...",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        _controller.text = toTitleCase(_controller.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    AboutPage(coffee_name: _controller.text),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: const Color.fromARGB(
                          255,
                          164,
                          105,
                          83,
                        ),
                        child: Icon(Icons.search, color: Colors.white),
                      ),
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
                  children:
                      coffee_name.map((coffee_name) {
                        return Stack(
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
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          child: Image.asset(
                                            "assets/images/template_bg_2.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(height: 158),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0,
                                            ),
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 80,
                                              child: Text(
                                                coffee_name,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 52,
                                                  fontFamily: "Pacifico",
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0,
                                            ),
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 120,
                                              child: Text(
                                                "${coffee_short_desc[coffee_name]}",
                                                style: TextStyle(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    66,
                                                    66,
                                                    66,
                                                  ),
                                                  fontSize: 20,
                                                  fontFamily: "Quattrocento",
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 50),
                                          SizedBox(
                                            height: 55,
                                            width: 300,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromARGB(
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
                                                          coffee_name:
                                                              coffee_name,
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
                                        ],
                                      ),
                                    ],
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
                                  "assets/images/${coffee_name}_top.png",
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
