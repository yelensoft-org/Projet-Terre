import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailProduit extends StatefulWidget {
  const DetailProduit({super.key});

  @override
  State<DetailProduit> createState() => _DetailProduitState();
}

class _DetailProduitState extends State<DetailProduit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Couleurs.blanc,
        body: Center(
          child: Container(
            width: 600,
            height: 490,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Couleurs.gri),
                borderRadius: BorderRadius.circular(15)),
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // color: Colors.amber,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Couleurs.gri),
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(children: [
                              Container(
                                //   width: 300,
                                //   height: 380,
                                child: Image.asset('assets/images/plover1.png'),
                              ),
                              Positioned(
                                bottom: 0,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('arrier')),
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Description"),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Couleurs.gri)),
                            child: const Text(
                                "Ce produit a été fabriquer au mali precisement a ségou avec le pagne tissé malien"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "25000FCFA",
                                  style: TextStyle(color: Couleurs.orange),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nom"),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20),
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Couleurs.gri),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text("Plover Bogolan"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Categorie"),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20),
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Couleurs.gri),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text("Teinture"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Date"),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20),
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Couleurs.gri),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text("20/20/20"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Quantite"),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20),
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Couleurs.gri),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text("10"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Culture"),
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20),
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Couleurs.gri),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text("Dogon"),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {},
                                child: Container(
                                    width: 120,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Couleurs.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "Rejeter",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Couleurs.blanc),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 120,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Couleurs.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "Rejeter",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Couleurs.blanc),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        )
                      ]),
                      // color: const Color.fromARGB(255, 19, 18, 17),
                    )),
              ],
            ),
          ),
        ));
  }
}
