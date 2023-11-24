import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:art_eshop/mobil/models/Utilisateur_Entity.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/pages/ajouter_produit.dart';
import 'package:art_eshop/mobil/pages/artisan_inscription.dart';
import 'package:art_eshop/mobil/pages/artisan_mes_ventes.dart';
import 'package:art_eshop/mobil/pages/artisan_modifier_produit.dart';
import 'package:art_eshop/mobil/pages/artisan_notification.dart';
import 'package:art_eshop/mobil/pages/information_profil_artisan.dart';
import 'package:art_eshop/mobil/pages/profil_utilisateur.dart';
import 'package:art_eshop/mobil/services/sharedPreference/artisan_sharedPreference.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtisanProfil extends StatefulWidget {
  const ArtisanProfil({super.key});

  @override
  State<ArtisanProfil> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ArtisanProfil> {
  List<Widget> pages = [];
  bool? isArtisan;
  int selectedIndex = 0;
   Artisan artisan = Artisan();
  late Utilisateur utilisateur;
  ArtisanSharedPreference artisanSharedPreference = ArtisanSharedPreference();
  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  bool isSelected = false;
  bool isSelected1 = false;

  void toggleSelection1() {
    setState(() {
      isSelected = !isSelected; // Inversion de l'état de la sélection
    });
  }

  void toggleSelection() {
    setState(() {
      isSelected1 = !isSelected1; // Inversion de l'état de la sélection
    });
  }

  @override
  void initState() {
    super.initState();
    artisanSharedPreference
        .getArtisanFromSharedPreference()
        .then((value)  {
      if (value != null) {
        print(value);
        artisan = value;
        // isArtisan = true;
      } else {
       return null;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Couleurs.blanc,
            size: 30,
          ),
        ),
        actions: [
          Center(
            child: Container(
              // width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "Profil",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Couleurs.blanc),
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const InformationProfilArtisan()));
              },
              icon: Icon(
                FontAwesomeIcons.ellipsisVertical,
                color: Couleurs.blanc,
              ))
        ],
      ),
      body: 
           
          
              Column(children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Couleurs.orange,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(70))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Couleurs.blanc,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: Couleurs.blanc),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/profil.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${artisan.nom} ${artisan.prenom}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Couleurs.blanc),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ArtisanNotification()));
                            },
                            icon: Icon(
                              FontAwesomeIcons.bell,
                              color: Couleurs.blanc,
                            ))
                      ],
                    ),
                  ),
                  // ::::::::::::::::::::bare de recherche
                  Row(
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.all(20),
                        width: 230,
                        // decoration:  BoxDecoration( border: Border),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIconColor: Couleurs.orange,
                              prefixIcon: const Icon(Icons.search),
                              hintText: "Recherche",
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              contentPadding: const EdgeInsets.all(0)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AjouterProduit(),
                              ));
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Couleurs.orange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Ajouter",
                              style: TextStyle(
                                  color: Couleurs.blanc,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              // changeColors1();
                              toggleSelection1();
                            });
                          },
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding:
                                const EdgeInsets.only(bottom: 8, right: 10),
                            child: Text(
                              "Mes Produits",
                              style: TextStyle(
                                fontSize: 18,
                                color:
                                    isSelected ? Couleurs.orange : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.black,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              // changeColors1();
                              toggleSelection1();
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 8, left: 10),
                            child: Text(
                              "Mes Ventes",
                              style: TextStyle(
                                fontSize: 18,
                                color: !isSelected
                                    ? Couleurs.orange
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  isSelected
                      ? Expanded(
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
                                        bottom: BorderSide(
                                            width: 1, color: Couleurs.gri))
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
                                              border: Border.all(
                                                  width: 1,
                                                  color: Couleurs.gri),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),

                                            child: Image.asset(
                                                "assets/images/plover1.png"),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: const Row(
                                                    children: [
                                                      Text("Nom:",
                                                          style: TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Gran-Boubou",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        )),
                                                    Text(
                                                      " 5",
                                                      style: TextStyle(
                                                        color: Couleurs.orange,
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text("7500 FCFA",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Couleurs
                                                                  .orange)),
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
                                        margin: const EdgeInsets.only(
                                            right: 8, top: 13),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ArtisanModifierProduit()));
                                                    },
                                                    icon: const FaIcon(
                                                      FontAwesomeIcons
                                                          .penToSquare,
                                                      color: Colors.black,
                                                    )),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: const FaIcon(
                                                      FontAwesomeIcons.trashCan,
                                                      color: Colors.red,
                                                    )),
                                              ],
                                            ),
                                            const Text("20/20/2023")
                                          ],
                                        ),
                                        // child: SvgPicture.asset('assets/icons/vect_droite.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ))
                      : Expanded(
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: const ArtisanVentes(),
                          ),
                        )
                ])
              // : const UtilisateurProfil(),
    );
  }
}
