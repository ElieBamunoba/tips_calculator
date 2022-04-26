import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/button.dart';
import 'widgets/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double bill = 0.0;
  double tip = 0.0;
  int person = 1;

  double tipPerPerson = 0;
  double totlalPerPerson = 0;

  TextEditingController billController = TextEditingController();
  TextEditingController tipController = TextEditingController();
  TextEditingController personController = TextEditingController();

  void calculate() {
    tipPerPerson = (bill * tip) / person;
    totlalPerPerson = (bill * (1 + tip)) / person;
  }

  void tipButtonFunction(double tipPercentage) {
    setState(() {
      tip = tipPercentage / 100;
      calculate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC5E4E7),
      body: SingleChildScrollView(
        child: Column(
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
                horizontal: 30,
              ),
              width: double.infinity,
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
                    controller: billController,
                    onEditingComplete: () {
                      setState(() {
                        if (billController.text.isNotEmpty) {
                          bill = double.parse(billController.text);
                        } else {
                          bill = 0;
                        }
                        //to dismiss the keybord after editing
                        FocusScope.of(context).unfocus();
                        calculate();
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      filled: true,
                      focusColor: Color(0xFF00474B),
                      fillColor: Color(0xFFF3F8FB),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.attach_money_outlined,
                        color: Color(0xFF00474B),
                      ),
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
                        button(
                          btnText: "5%",
                          function: () {
                            tipButtonFunction(5);
                          },
                        ),
                        button(
                          btnText: "10%",
                          function: () {
                            tipButtonFunction(10);
                          },
                        ),
                        button(
                          btnText: "15%",
                          function: () {
                            tipButtonFunction(15);
                          },
                          btnColor: const Color(0xFF26C2AD),
                          textColor: const Color(0xFF00474B),
                        ),
                        button(
                          btnText: "25%",
                          function: () {
                            tipButtonFunction(25);
                          },
                        ),
                        button(
                          btnText: "50%",
                          function: () {
                            tipButtonFunction(50);
                          },
                        ),
                        TextField(
                          controller: tipController,
                          onEditingComplete: () {
                            setState(() {
                              if (tipController.text.isNotEmpty) {
                                tip = double.parse(tipController.text) / 100;
                              } else {
                                tip = 0;
                              }
                              //to dismiss the keybord after editing
                              FocusScope.of(context).unfocus();
                              calculate();
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Custom  ",
                            filled: true,
                            fillColor: Color(0xFFF3F8FB),
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
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
                  textStyle(text: "Number of People"),
                  TextField(
                    controller: personController,
                    onEditingComplete: () {
                      setState(() {
                        if (personController.text.isNotEmpty) {
                          person = int.parse(personController.text);
                        } else {
                          person = 1;
                        }
                        //to dismiss the keybord after editing
                        FocusScope.of(context).unfocus();
                        calculate();
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F8FB),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF00474B),
                      ),
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
                  Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFF00474B),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStyle(
                                  text: 'Tip Amount',
                                  textColor: const Color(0xFFFFFFFF),
                                  bottomPadding: false,
                                ),
                                textStyle(
                                  text: '/ person',
                                )
                              ],
                            ),
                            resultTextStyle(
                                text: "\$${tipPerPerson.toStringAsFixed(2)}"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStyle(
                                  text: 'Total',
                                  textColor: const Color(0xFFFFFFFF),
                                  bottomPadding: false,
                                ),
                                textStyle(
                                  text: '/ person',
                                )
                              ],
                            ),
                            resultTextStyle(
                                text:
                                    "\$${totlalPerPerson.toStringAsFixed(2)}"),
                          ],
                        ),
                        SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  tip = 0;
                                  person = 1;
                                  bill = 0;
                                  calculate();
                                  tipController.clear();
                                  personController.clear();
                                  billController.clear();
                                  tipPerPerson = 0.0;
                                  totlalPerPerson = 0.0;
                                });
                              },
                              child: Text(
                                "RESET",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.spaceMono(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Color(0xFF00474B),
                                  ),
                                ),
                              ),
                              style: TextButton.styleFrom(
                                primary: const Color(0xFFF3F8FB),
                                backgroundColor: const Color(0xFF26C2AD),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
