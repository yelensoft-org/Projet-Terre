import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/pages/listProduit.dart';
import 'package:art_eshop/mobil/pages/utilisateur_mode_paiement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProduitDetail extends StatefulWidget {
  const ProduitDetail({super.key});

  @override
  State<ProduitDetail> createState() => _ProduitDetailState();
}

class _ProduitDetailState extends State<ProduitDetail> {
//   Color containerColor = Couleurs.blanc; // Couleur du conteneur
//   Color textColor = Couleurs.orange; // Couleur du texte
//   Color containerColor1 = Couleurs.blanc; // Couleur du conteneur
//   Color textColor1 = Couleurs.orange; // Couleur du texte
//   Color containerColor2 = Couleurs.blanc; // Couleur du conteneur
//   Color textColor2 = Couleurs.orange; // Couleur du texte
  bool isContainerClicked1 = false;
  bool isContainerClicked2 = false;
  bool isContainerClicked3 = false;

  bool isSelected1 = false; // Variable pour suivre l'état de la sélection
  bool isSelected2 = false; // Variable pour suivre l'état de la sélection
  bool isSelected3 = false; // Variable pour suivre l'état de la sélection

  void toggleSelection1() {
    setState(() {
      isSelected1 = !isSelected1; // Inversion de l'état de la sélection
    });
  }

  void toggleSelection2() {
    setState(() {
      isSelected2 = !isSelected2; // Inversion de l'état de la sélection
    });
  }

  void toggleSelection3() {
    setState(() {
      isSelected3 = !isSelected3; // Inversion de l'état de la sélection
    });
  }

  int count = 0;
  double montant = 7500;
  double montantInitial = 7500;
  late String montantText = ' $montant';
  void remove() {
    setState(() {
      if (count > 0) {
        count--;
        montant -= count;
        montantText = 'Montant: $montant';
      }
    });
  }

  void add() {
    setState(() {
      count++;
      print(count);
    });
  }

  bool active = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Couleurs.orange,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ListProduit()));
          },
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Couleurs.blanc,
            size: 30,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Text(
                  "Ajouter au Panier",
                  style: TextStyle(
                      color: Couleurs.blanc,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: active,
                  thumbIcon: thumbIcon,
                  activeColor: Couleurs.blanc,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      active = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(239, 245, 242, 242),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 70),
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  child: Image.asset('assets/images/plover1.png',
                      fit: BoxFit.fill),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, bottom: 8, left: 20),
            // height: 40,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      _modalDetail();
                      // showBottomSheet(context: context, builder: (context) =>Container())
                    },
                    child: FaIcon(
                      Icons.info,
                      color: Couleurs.orange,
                      size: 40,
                    )),
                SvgPicture.asset(
                  'assets/icons/telecharger.svg',
                  height: 30,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _modalDetail() {
    showModalBottomSheet(
        isDismissible: false,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return // ::::::::::::::::::::::::::::::::;detail de l'image
              StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                padding: const EdgeInsets.all(10),
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Couleurs.gri),
                    color: Couleurs.blanc,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Couleurs.gri,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              // :::::::::::::::::::::::nom
                              Container(
                                width: MediaQuery.of(context).size.width,
                                // decoration:
                                //     BoxDecoration(border: Border.all(width: 1)),
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "T-shirt",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    Container(
                                      child: Text(
                                        "Teinture",
                                        style:
                                            TextStyle(color: Couleurs.orange),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // ::::::::::::::::::::::::::::;tail
                              Container(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Taille",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                // changeColors1();
                                                toggleSelection1();
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: isSelected1
                                                      ? Couleurs.blanc
                                                      : Couleurs.orange,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: Center(
                                                child: Text(
                                                  "N",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: isSelected1
                                                          ? Couleurs.orange
                                                          : Couleurs.blanc),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                toggleSelection2();
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: isSelected2
                                                      ? Couleurs.blanc
                                                      : Couleurs.orange,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: Center(
                                                child: Text(
                                                  "XL",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: isSelected2
                                                          ? Couleurs.orange
                                                          : Couleurs.blanc),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                toggleSelection3();
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: isSelected3
                                                      ? Couleurs.blanc
                                                      : Couleurs.orange,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: Center(
                                                child: Text(
                                                  "L",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: isSelected3
                                                          ? Couleurs.orange
                                                          : Couleurs.blanc),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Couleurs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isContainerClicked1 =
                                                    !isContainerClicked1;
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Couleurs.orange,
                                                  // shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: isContainerClicked1
                                                  ? const Icon(Icons.check,
                                                      color: Colors
                                                          .white) // Your icon here
                                                  : null,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isContainerClicked2 =
                                                    !isContainerClicked2;
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Couleurs.gri,
                                                  // shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: isContainerClicked2
                                                  ? const Icon(Icons.check,
                                                      color: Colors
                                                          .white) // Your icon here
                                                  : null,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                isContainerClicked3 =
                                                    !isContainerClicked3;
                                              });
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.amberAccent,
                                                  // shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Couleurs.gri)),
                                              child: isContainerClicked3
                                                  ? const Icon(Icons.check,
                                                      color: Colors
                                                          .white) // Your icon here
                                                  : null,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // :::::::::::::::::::::::::::culture
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Culture",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Container(
                                      child: Text(
                                        "Dogon",
                                        style:
                                            TextStyle(color: Couleurs.orange),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // :::::::::::::::::::::description
                            ],
                          ),
                        ),
                        // ::::::::::::::cote droit
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(right: 15),
                            // decoration:
                            //     BoxDecoration(border: Border.all(width: 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: Text(
                                    "$montantInitial FCFA",
                                    style: TextStyle(
                                        color: Couleurs.orange, fontSize: 22),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // :::::::::::::::::::;counter button
                                Container(
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          // remove();
                                          setState(() {
                                            count--;

                                            montant = (montantInitial / count);
                                            montantText = 'Montant: $montant';
                                            print(count);
                                          });
                                        },
                                        icon: SvgPicture.asset(
                                          'assets/icons/moin.svg',
                                          height: 20,
                                        ),
                                      ),
                                      Text(
                                        '$count',
                                        style: const TextStyle(fontSize: 22),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          // add();
                                          setState(() {
                                            count++;

                                            montant = montantInitial * count;
                                            montantText = 'Montant: $montant';
                                            print(count);
                                          });
                                        },
                                        icon: SvgPicture.asset(
                                          'assets/icons/plus.svg',
                                          height: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(
                                  height: 20,
                                ),
                                // ::::::::::::::::::button acheter
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UtilisateurModePaiement()));
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Couleurs.gri),
                                        color: Couleurs.orange,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "Acheter",
                                        style: TextStyle(
                                            color: Couleurs.blanc,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    // ::::::::::::::::::::::::description
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Container(
                            // padding: const EdgeInsets.only(left: 10),
                            child: const Text(
                              "calibrer une mise en  titre provisoire pour calibrer une mise en titre provisoire pour calibrer une mise en  titre provisoire pour calibrer une mise en",
                              style: TextStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              children: [
                                const Text(
                                  "Montant",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$montant : FCFA',
                                  style: TextStyle(color: Couleurs.orange),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
