import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC5E4E7),
      body: Column(children: [
        //header
        Container(
          width: double.infinity,
          height: 200,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("SPLI"),
              const Text("TTER"),
            ],
          )),
        ),
        //body
        Container(
          width: double.infinity,
          height: 300,
          child: null,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: Color(0xffffffff),
          ),
        ),
      ]),
    );
  }
}
