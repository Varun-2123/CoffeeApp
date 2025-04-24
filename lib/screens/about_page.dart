// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_22/screens/homepage.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key, required this.coffee_name});
  final coffee_name;
  @override
  State<StatefulWidget> createState() => _aboutpageState();
}

class _aboutpageState extends State<AboutPage> {
  final Map<String, String> coffee_des = {
    "Mocha":
        "A rich fusion of bold espresso, smooth steamed milk, and luscious chocolate syrup, the Mocha delivers a perfect balance of bittersweet and creamy flavors. Topped with a swirl of whipped cream, its pure indulgence in every sip",

    "Cappuccino":
        "A timeless Italian masterpiece,  Cappuccino is an elegant balance of bold, aromatic espresso crowned with a luxurious cloud of velvety steamed milk and topped with a whisper-light layer of creamy foam. Every sip delivers a harmonious blend of richness and airiness, offering a moment of pure indulgence",

    "Latte":
        "Crafted with artistry and warmth, our Latte begins with a rich, robust shot of espresso, lovingly enveloped in a generous pour of silky, steamed milk. Finished with a delicate cap of microfoam, its a smooth, comforting embrace in a cup—perfect for those who savor a mellow, milky coffee experience",

    "Espresso":
        "The soul of true coffee craftsmanship, our Espresso is a pure, concentrated shot of intense flavor and aroma. Brewed to perfection under high pressure, its a bold, full-bodied elixir with a golden crema that captures the very essence of the coffee bean in its purest, most exhilarating form",

    "Macchiato":
        "For the connoisseur who cherishes boldness with a touch of elegance, our Café Macchiato offers a striking contrast: a rich, robust espresso stained with a gentle kiss of frothy milk. A perfect harmony of strength and subtle softness, each sip is a refined journey for the senses",

    "Americano":
        "An Americano is crafted by blending a bold shot of espresso with hot water, softening its intensity and revealing a smooth, rich flavor with a clean, lingering finish",
    "Frappe":
        "A Frappe is a refreshing blend of rich coffee, ice, and a touch of sweetness, shaken or blended to create a creamy, frothy delight — cool, bold, and irresistibly smooth",
  };
  @override
  Widget build(BuildContext context) {
    final name = widget.coffee_name;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Image.asset(
              'assets/images/template_bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  height: 390,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(190),
                    child: Image.asset(
                      "assets/images/$name.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 300,
                margin: EdgeInsets.only(right: 50),
                // color: Colors.white,
                child: Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'DmSerif',
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  // color: Colors.white,
                  height: 170,
                  width: 350,
                  margin: EdgeInsets.only(left: 3),
                  // color: Colors.white,
                  child: Text(
                    "${coffee_des[name]}",
                    // "A rich fusion of bold espresso, smooth steamed milk, and luscious chocolate syrup, the Mocha delivers a perfect balance of bittersweet and creamy flavors. Topped with a swirl of whipped cream, its pure indulgence in every sip"
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Playfair',
                      fontWeight: FontWeight.w600,
                      // fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 78, 53, 49),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 181, 108, 13),
                  ),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Text(
                    'Back!',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'SpecialGothic',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
