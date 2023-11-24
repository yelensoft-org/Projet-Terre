import 'package:art_eshop/desktop/controller/artisan_controller.dart';
import 'package:art_eshop/desktop/controller/artisan_controller.dart';
import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class AdminProduitListArtisan extends StatefulWidget {
  const AdminProduitListArtisan({super.key});

  @override
  State<AdminProduitListArtisan> createState() => _AdminListProduitState();
}

class _AdminListProduitState extends State<AdminProduitListArtisan> {
  @override
  Widget build(BuildContext context) {
    final artisanController = context.watch<ArtisanController>();

    return Scaffold(
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
                const Spacer(),
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
                mainAxisExtent: 300,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 20.0,
              ),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                    highlightColor: Couleurs.orange,
                    onTap: () {
                      artisanController.gotoProduiList();
                    },
                    child: Container(
                      // height: 400,
                      decoration: BoxDecoration(
                          border: Border.all(color: Couleurs.gri, width: 1),
                          borderRadius: BorderRadius.circular(8)),
                    ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Couleurs.orange,
        elevation: 3,
        tooltip: "Retour",
        onPressed: () {
          artisanController.gotoDetails();
        },
        child: Center(
            child: FaIcon(
          Icons.arrow_back,
          color: Couleurs.blanc,
          size: 18,
        )),
      ),
    );
  }
}
