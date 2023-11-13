// import 'dart:ffi';

import 'dart:io';

import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/services/api_service.dart';
import 'package:art_eshop/mobil/services/image_picture.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:http/src/response.dart';

// :::::::::::::::::::::::::::::::::::::  statfulwidget class :::::::::
class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  // final TextEditingController _confirmpasswordController =
  //     TextEditingController();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _paysController = TextEditingController();
  Service service = Service();

  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  bool passwordVisible = false;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        // title: const Text("Search"),
      ),
      body: Container(
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 190,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Couleurs.orange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(70))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () async {
                          selectedImage = await ImageCapture.pickImage();
                          setState(
                              () {}); // Pour reconstruire le widget avec la nouvelle image
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          child: CircleAvatar(
                            backgroundColor: Couleurs.blanc,
                            backgroundImage: selectedImage != null
                                ? FileImage(selectedImage!)
                                : null,
                            child: selectedImage == null
                                ? Text(
                                    "PHOTO",
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color: Couleurs.gri,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // :::::::::::::::::formulaire::::::

              Expanded(
                  child: SingleChildScrollView(
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _nomController,
                            decoration: const InputDecoration(
                              labelText: "Nom *",
                              hintText: "Entree votre Nom",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0))),
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ce champs est Obligatoir";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _prenomController,
                            decoration: const InputDecoration(
                              labelText: "Prenom *",
                              hintText: "Entree votre prenom",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0))),
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ce champs est Obligatoir";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: "Email *",
                              hintText: "Entree votre adresse mail",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0))),
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ce champs est Obligatoir";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              labelText: "Mot de passe *",
                              hintText: "Entree votre mot de passe",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0))),
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ce champs est Obligatoir";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _paysController,
                            decoration: const InputDecoration(
                              labelText: "Pays *",
                              hintText: "Entree votre pays de residence",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0))),
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ce champs est Obligatoir";
                              }
                              return null;
                            },
                          ),
                        ),

                        // :::::::::::::::submit:::::::::::::::
                        InkWell(
                          highlightColor: Couleurs.gri,
                          borderRadius: BorderRadius.circular(10),
                          onTap: () async {
                           

                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            margin: const EdgeInsets.all(10.0),
                            // margin:
                            //     const EdgeInsets.only(top: 15, left: 40, right: 40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Couleurs.orange,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ENREGISTRER",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Couleurs.blanc),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
