import 'package:art_eshop/desktop/controller/culture_controller.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Culture extends StatefulWidget {
  const Culture({super.key});

  @override
  State<Culture> createState() => _CultureState();
}

class _CultureState extends State<Culture> {
  @override
  Widget build(BuildContext context) {
    final cultureController = context.watch<CultureController>();
    return Scaffold(
        body: Column(children: [
      Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: Couleurs.blanc,
        width: MediaQuery.of(context).size.width,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Liste de Produits",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          // const SizedBox(
          //   width: 100,
          // ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Couleurs.orange),
                  borderRadius: BorderRadius.circular(5)),
              child: const Text('Ajouter'),
            ),
          )
        ]),
      ),
      Expanded(
          child: ListView.builder(
        itemCount: 5,
        // padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            highlightColor: Couleurs.orange.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            onTap: () {
             cultureController .gotoDetails();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              // margin: const EdgeInsets.all(5),
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Couleurs.blanc,
                  border:
                      Border(top: BorderSide(width: 1, color: Couleurs.gri))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 8,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Couleurs.gri),
                          ),
                          child: Image.asset(
                            'assets/images/profil.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Text(
                          "Culture Dogons",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ))
    ]));
  }
}
