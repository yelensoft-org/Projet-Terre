import 'package:art_eshop/desktop/controller/produit_controller.dart';
import 'package:art_eshop/mobil/models/Produit_Entity.dart';
import 'package:art_eshop/mobil/models/Taille_Entity.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/models/couleur_Entity.dart';
import 'package:art_eshop/mobil/services/produit_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminListProduit extends StatefulWidget {
  const AdminListProduit({super.key});

  @override
  State<AdminListProduit> createState() => _AdminListProduitState();
}

class _AdminListProduitState extends State<AdminListProduit> {
  ProduitProvider produitProvider = ProduitProvider();
  List<Produit> produits = [];
  Future<void> fetchProduit() async {
    await produitProvider.getDataProduits().then((value) {
      print('-----produit--${value}');
      setState(() {
        produits = value;
      });
    }).catchError((err) {
      print('Erreur lors de la récupération des Produit: $err');
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProduit();
  }

  @override
  Widget build(BuildContext context) {
    final produitController = context.watch<ProduitController>();
    return Scaffold(
      backgroundColor: Couleurs.blanc,
      // appBar: (AppBar(
      //   // toolbarHeight: 100,
      //   leading:
      // )),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            color: Couleurs.blanc,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Liste de Produits",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                // const SizedBox(
                //   width: 100,
                // ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Couleurs.orange),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        const Text('Catetegorie'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.select_all))
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250.0,
                mainAxisExtent: 350,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 20.0,
              ),
              shrinkWrap: true,
              itemCount: produits.length,
              itemBuilder: (context, index) {
                final produit = produits[index];
                return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    highlightColor: Couleurs.orange,
                    onTap: () {
                      produitProvider
                          .fetchProduitInformation(produit.idProduit!,)
                          .then((value) {
                        context.read<ProduitController>().currentProduit =
                            Produit.fromMap(value['produits']);
                        List<dynamic> list = value['tailles'];
                        List<TailleProduit> tailleProdu =
                            list.map((e) => TailleProduit.fromMap(e)).toList();
                        context
                            .read<ProduitController>()
                            .currentTailleProduits = tailleProdu;
                        print(tailleProdu);
                        List<dynamic> listcoul = value['produitsCouleur'];
                        print('------list----${listcoul}');
                        List<CouleursProduit> listcouleurs = listcoul
                            .map((e) => CouleursProduit.fromMap(e))
                            .toList();
                        context
                            .read<ProduitController>()
                            .currentCouleursProduits = listcouleurs;
                        print('--------la list fro;Map----${listcouleurs}');
                        produitController.gotoDetails();
                      });
                    },
                    child: Container(
                      // height: 400,
                      decoration: BoxDecoration(
                          border: Border.all(color: Couleurs.gri, width: 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              // padding: const EdgeInsets.all(10),
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Couleurs.gri, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.network(
                                "http://127.0.0.1/${produit.photo}",
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${produit.nom}"),
                                  Text(
                                    "${produit.prix}",
                                    style: TextStyle(color: Couleurs.orange),
                                  ),
                                  Text("${produit.quantite}"),
                                  Text(
                                      "${produit.artisans!.nom}  ${produit.artisans!.prenom}"),
                                  Text("${produit.categories!.nom}"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
