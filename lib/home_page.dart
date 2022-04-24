import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC5E4E7),
      body: Column(
        children: [
          //header
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  titleStyle(title: "SPLI"),
                  titleStyle(title: "TTER"),
                ],
              ),
            ),
          ),
          //body
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 35,
            ),
            width: double.infinity,
            height: 600,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Color(0xffffffff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textStyle(text: "Bill"),
                TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F8FB),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.attach_money_outlined),
                  ),
                  textAlign: TextAlign.end,
                  style: GoogleFonts.spaceMono(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF00474B),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                textStyle(text: "Select Tip % "),
                SizedBox(
                  height: 250,
                  child: GridView.count(
                    primary: false,
                    childAspectRatio: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    children: [
                      button(btnText: "5%"),
                      button(btnText: "10%"),
                      button(
                        btnText: "15%",
                        textColor: const Color(0xFF00474F),
                        btnColor: const Color(0xFFF3F8FB),
                      ),
                      button(btnText: "25%"),
                      button(btnText: "50%"),
                      button(
                        btnText: "Custom",
                        textColor: const Color(0xFF00474F),
                        btnColor: const Color(0xFFF3F8FB),
                      ),
                    ],
                  ),
                ),
                textStyle(text: "Number of People"),
                TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F8FB),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person),
                  ),
                  textAlign: TextAlign.end,
                  style: GoogleFonts.spaceMono(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF00474B),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
