import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
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
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Couleurs.blanc,
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                child: AnimatedTextKit(
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Bienvenue!!',
                        speed: const Duration(milliseconds: 100),
                      ),
                    ]
                    // text: [''], // Liste de textes à afficher
                    // textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    // isRepeatingAnimation: false,),
                    )),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset("assets/images/logo_Art.png"),
            ),
            InkWell(
              highlightColor: Couleurs.gri,
              onTap: () {},
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color: Couleurs.orange,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Couleurs.gri,
                        offset: const Offset(3, 3),
                        spreadRadius: 1)
                  ],
                  border: Border.all(width: 1, color: Couleurs.blanc),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Artisan",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Couleurs.blanc),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  color: Couleurs.orange,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Couleurs.gri,
                        offset: const Offset(3, 3),
                        spreadRadius: 1)
                  ],
                  border: Border.all(width: 1, color: Couleurs.blanc),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Utilisateur",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Couleurs.blanc),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
