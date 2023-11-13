import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/pages/accueil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListProduit extends StatefulWidget {
  const ListProduit({super.key});

  @override
  State<ListProduit> createState() => _ListProduitState();
}

class _ListProduitState extends State<ListProduit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Couleurs.orange,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Couleurs.orange,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(40))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Accueil(),
                        ),
                      );
                      // Popup().dialogLang(context);
                    },
                    child: SvgPicture.asset('assets/icons/vector.svg')),
                const Text(
                  "Ousmato Toure",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profil.png"),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            // decoration:  BoxDecoration( border: Border),
            child: TextField(
              decoration: InputDecoration(
                  prefixIconColor: Couleurs.orange,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Recherche",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  contentPadding: const EdgeInsets.all(0)),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: const Text(
                    "T-Shirt Bogolan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                highlightColor: Couleurs.orange.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Container(
                  padding:const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(5),
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Couleurs.blanc,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Couleurs.gri,
                          offset: const Offset(3, 3),
                          spreadRadius: 1)
                    ],
                    border: Border.all(width: 1, color: Couleurs.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 8,
                        child: Row(
                          children: [
                            Container(
                              // margin: const EdgeInsets.all(8),
                              // height: 90,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Couleurs.gri),
                                borderRadius: BorderRadius.circular(6),
                              ),

                              child: Image.asset("assets/images/plover.png"),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Nom",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Taille"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Prix",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          child:
                              SvgPicture.asset('assets/icons/vect_droite.svg'),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
