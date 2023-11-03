import 'package:flutter/material.dart';

class Produits extends StatefulWidget {
  const Produits({super.key});

  @override
  State<Produits> createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      // decoration: const BoxDecoration(
      //   color: Colors.amber
      // ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30)
            ),
            
          ),
          SizedBox(height: 40,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30)
            ),),
          SizedBox(height: 40,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30)
            ),),
          SizedBox(height: 40,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30)
            ),),
          SizedBox(height: 40,),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 31, 30, 30)
            ),)
        ],
      )
    );
  }
}