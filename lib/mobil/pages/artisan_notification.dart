import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/pages/profil_artisan.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArtisanNotification extends StatefulWidget {
  const ArtisanNotification({super.key});

  @override
  State<ArtisanNotification> createState() => _ArtisanNotificationState();
}

class _ArtisanNotificationState extends State<ArtisanNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Couleurs.orange,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const ArtisanProfil()));
          },
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Couleurs.blanc,
            size: 30,
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(
              width: 70,
            ),
            Container(
              child: Text(
                "Notifications",
                style: TextStyle(
                    color: Couleurs.blanc,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                  highlightColor: Couleurs.orange.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                  child: Column(
                    children: [
                      Center(
                          child: Container(
                        decoration: BoxDecoration(
                            // border: Border.all(width: 1),
                            // color: const Color.fromARGB(255, 46, 38, 38),
                            borderRadius: BorderRadius.circular(5)),
                        // width: 200,

                        child: Text(
                          "20/20/2033",
                          style: TextStyle(),
                        ),
                      )),
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(5),
                        // height: 20,
                        // width: 100,
                        decoration: BoxDecoration(
                          color: Couleurs.blanc,
                          border: Border.all(width: 1, color: Couleurs.gri),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "votre produit de tel categorie a etais achete ou commende",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "11h:20",
                                    style: TextStyle(color: Couleurs.orange),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ));
            },
          ))
        ]),
      ),
    );
  }
}
