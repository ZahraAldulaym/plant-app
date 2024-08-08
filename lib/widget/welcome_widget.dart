// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:plant_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/plant.png"),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Delivering greenery at your doorstep',
              // textDirection: TextDirection.ltr,
              style: GoogleFonts.lora(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 18, 73, 33),
              ),
            ),
          ),
          
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: const Color.fromARGB(255, 18, 73, 33),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Order Now',
                    style: GoogleFonts.lora(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
