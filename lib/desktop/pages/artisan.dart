import 'package:flutter/material.dart';

class Artisan extends StatefulWidget {
  const Artisan({super.key});

  @override
  State<Artisan> createState() => _ProduitsState();
}

class _ProduitsState extends State<Artisan> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 43, 219, 20)
      ),
    );
  }
}