import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtisanVentes extends StatefulWidget {
  const ArtisanVentes({super.key});

  @override
  State<ArtisanVentes> createState() => _ArtisanVentesState();
}

class _ArtisanVentesState extends State<ArtisanVentes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Expanded(
                child: ListView.builder(
          itemCount: 5,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              highlightColor: Couleurs.orange.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Couleurs.blanc,
                    border: Border(
                        bottom: BorderSide(width: 1, color: Couleurs.gri))
                    // borderRadius: BorderRadius.circular(10),
                    ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 7,
                      child: Row(
                        children: [
                          Container(
                            // margin: const EdgeInsets.all(8),
                            // height: 90,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Couleurs.gri),
                              borderRadius: BorderRadius.circular(6),
                            ),

                            child: Image.asset("assets/images/plover1.png"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Row(
                                    children: [
                                      Text("Nom:",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Gran-Boubou",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: Row(
                                  children: [
                                    const Text("Quantite:",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text(
                                      " 5",
                                      style: TextStyle(
                                        color: Couleurs.orange,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      const Text("Prix:",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("7500 FCFA",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Couleurs.orange)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        margin: const EdgeInsets.only(right: 8, top: 60),
                        child: const Column(
                          children: [Text("20/20/2023")],
                        ),
                        // child: SvgPicture.asset('assets/icons/vect_droite.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )))
      ],
    );
  }
}
