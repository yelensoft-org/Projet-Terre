import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';

class AjouterProduit extends StatefulWidget {
  const AjouterProduit({super.key});

  @override
  State<AjouterProduit> createState() => _AjouterProduitState();
}

class _AjouterProduitState extends State<AjouterProduit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Couleurs.orange,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(70))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ajouter Votre Produit",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Couleurs.blanc),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      margin:
                          const EdgeInsets.only(top: 10, left: 40, right: 40),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Couleurs.gri),
                          borderRadius: BorderRadius.circular(10)),
                    ),

                    // ::::::input:::::::::::
                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Nom*",
                          hintText: "Entree le nom produit",
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
                    // ::::::::::::::input categories::::::::::::::

                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.check),
                          labelText: "Categorie*",
                          hintText: "Choisir une categorie",
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
                    // ::::::::::input:::::tail

                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.check),
                          labelText: "Taille *",
                          hintText: "Choisir la taille",
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

                    // :::::::input prix::::::::::::::::::
                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Prix *",
                          hintText: "Entree le prix",
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

                    // ::::::::::::::input quantiter:::::::::::::::::::::::::
                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Quantité*",
                          hintText: "Entree la quantite",
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

                    // ::::::::::description:::::::::::::::::
                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Description *",
                          hintText: "Entree une Description",
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

                    // :::::::::::;input culture::::::::::::::::

                    Container(
                      margin:
                          const EdgeInsets.only(top: 15, left: 40, right: 40),
                      child: TextFormField(
                        // controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Culture *",
                          hintText: "Entree une culture",
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

                    // :::::::::::::submit button:::::::::::::::
                    InkWell(
                      highlightColor: Couleurs.gri,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin:
                            const EdgeInsets.only(top: 15, left: 40, right: 40),
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
              // ::::::input ::::::::::::::::
            ),
          )
        ],
      ),
    );
  }
}
