import 'package:flutter/material.dart';

class PageBienvenue extends StatefulWidget {
  const PageBienvenue({Key? key}) : super(key: key);

  @override
  State<PageBienvenue> createState() => _PageBienvenueState();
}

class _PageBienvenueState extends State<PageBienvenue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: "Bienvenue",
      // ),
      body: Container(
        child: Column(
          children: [
            // const SizedBox(
            //   height: 10,
            // ),
            const Text(
              "Bienvenue",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
