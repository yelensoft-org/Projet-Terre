import 'package:art_eshop/desktop/service/admin_service.dart';
import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/services/artisan_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailArtisan extends StatefulWidget {
  const DetailArtisan({super.key});

  //final Artisan artisan;

  @override
  State<DetailArtisan> createState() => _DetailArtisanState();
}

class _DetailArtisanState extends State<DetailArtisan> {
  MyHomePageProvider service = MyHomePageProvider();
  AdminService serviceAdmin = AdminService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Consumer<ArtisantService>(
                builder: (context, value, child) {
                  return Column(
                    children: [
                      const Text(
                        "Detail de l'Artisan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 800,
                        height: 580,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Couleurs.gri),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 316,
                                          padding: const EdgeInsets.all(10),
                                          child: Text(
                                            "${value.artisan.nom} ${value.artisan.nom}",
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          width: 316,
                                          child: value.artisan.active!
                                              ? const Text(
                                                  "Active",
                                                  style: TextStyle(
                                                      color: Colors.green),
                                                )
                                              : const Text(
                                                  "Non active",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      height: 300,
                                      width: 300,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Couleurs.gri)),
                                    ),
                                    // Container(
                                    //   padding: const EdgeInsets.all(10),
                                    //   width: 316,
                                    //   child: const Text(
                                    //     "Entreprise",
                                    //     textAlign: TextAlign.start,
                                    //     style: TextStyle(
                                    //         fontWeight: FontWeight.bold, fontSize: 16),
                                    //   ),
                                    // ),
                                    // Container(
                                    //   width: 316,
                                    //   padding: const EdgeInsets.only(left: 10),
                                    //   decoration: BoxDecoration(
                                    //       border: Border.symmetric(
                                    //           horizontal: BorderSide(
                                    //               width: 1, color: Couleurs.gri))),
                                    //   child: Text(
                                    //     "ArtEshop",
                                    //     style: TextStyle(
                                    //         fontSize: 35, color: Couleurs.gri),
                                    //   ),
                                    // ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      width: 316,
                                      child: const Text(
                                        "Description",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 316,
                                      height: 130,
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  color: Couleurs.gri,
                                                  width: 1))),
                                      child: const Text(
                                          "ArtEshop une entreprise de prestation de service qui evolue dans le dommaine de l'e-commerce"),
                                    ),
                                    Container(
                                      width: 316,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Text(
                                            "Articles",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          IconButton(
                                              onPressed: (() {}),
                                              icon: Icon(
                                                Icons.remove_red_eye,
                                                color: Couleurs.orange,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                            Container(
                              width: 1,
                              color: Couleurs.gri,
                              height: 580,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(),
                                  child: const Text(
                                    "Entreprise",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 1, color: Couleurs.gri))),
                                  child: Text(
                                    value.artisan.entreprise!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(),
                                  child: const Text(
                                    "Telephone",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 1, color: Couleurs.gri))),
                                  child: Text(
                                    value.artisan.telephone!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(),
                                  child: const Text(
                                    "Region",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 1, color: Couleurs.gri))),
                                  child: Text(
                                    value.artisan.region!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(),
                                  child: const Text(
                                    "Sexe",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 1, color: Couleurs.gri))),
                                  child: Text(
                                    value.artisan.sexe!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: const BoxDecoration(),
                                  child: const Text(
                                    "Administrateur",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(10),
                                  width: 480,
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          horizontal: BorderSide(
                                              width: 1, color: Couleurs.gri))),
                                  child: Text(
                                    "adama",
                                    // serviceAdmin.currentAdmin.nom,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 408,
                                  child: InkWell(
                                    child: Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Couleurs.orange,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                        child: Text(
                                          "Desactiver",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Couleurs.blanc,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
