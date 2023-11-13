import 'package:art_eshop/desktop/model/ajouter_admin.dart';
import 'package:art_eshop/desktop/pages/admin_connexion.dart';
import 'package:art_eshop/desktop/pages/ajout_admin.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';

class AdminListArtisan extends StatefulWidget {
  const AdminListArtisan({super.key});

  @override
  State<AdminListArtisan> createState() => _AdminListArtisanState();
}

class _AdminListArtisanState extends State<AdminListArtisan> {
  Popup popup = Popup();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          const Center(
              child: Text(
            "Liste Artisan",
            style: TextStyle(fontSize: 30),
          )),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    // popup.dialogAjoutAdmin(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AjoutArtisan()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 40),
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Couleurs.orange,
                    ),
                    child: Text(
                      "ajouter",
                      style: TextStyle(
                        color: Couleurs.blanc,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
         
        ]),
      ),
    );
  }
}
