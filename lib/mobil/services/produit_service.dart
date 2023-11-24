import 'dart:convert';
import 'dart:io';

import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:art_eshop/mobil/models/Categories_Entity.dart';
import 'package:art_eshop/mobil/models/Produit_Entity.dart';
import 'package:art_eshop/mobil/models/Taille_Entity.dart';
import 'package:art_eshop/mobil/models/couleur_Entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProduitService {
  // Produit produit = Produit();

  int indexPage = 0;

  Future<http.Response> ajoutProduit(
    Produit produit,
    File imageFile,
    List<TailleProduit> tailleProduit,
    List<CouleursProduit> couleurProduit,
    Artisan artisan,
    Categories categories,
  ) async {
    try {
      final url = Uri.parse('http://10.0.2.2:8080/produit/add');

      var request = http.MultipartRequest('POST', url);
      request.fields["produit"] = jsonEncode({
        'nom': produit.nom,
        'photo': "",
        'categories': {
          'idCategorie': categories.idCategorie,
          'nom': categories.nom,
        },
        'prix': produit.prix,
        'quantite': produit.quantite,
        'culture': produit.culture,
        'description': produit.description,
        'artisans': artisan.toMap()
      });
      print(categories);
      request.fields['couleur'] =
          jsonEncode(couleurProduit.map((couleur) => couleur.toMap()).toList());
      print(jsonEncode(
          couleurProduit.map((couleur) => couleur.toMap()).toList()));
      print("------------------------------oll");
      ;
      request.fields["taille"] =
          jsonEncode(tailleProduit.map((e) => e.toMap()).toList());
      print(jsonEncode(tailleProduit.map((e) => e.toMap()).toList()));

      var image = await http.MultipartFile.fromPath('photo', imageFile.path);
      request.files.add(image);
      debugPrint(imageFile.path);

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(
          streamedResponse); // Convertit le flux en une réponse

      if (response.statusCode == 200) {
        // L'enregistrement a réussi
        print('Produit ajouter avec succès');
      } else {
        // Gérer les erreurs de réponse HTTP
        print(
            'Erreur lors de l\'enregistrement du produit. Statut de réponse : ${response.body}');
        // artisantNonActive = Artisan.fromJson(jsonDecode(response.body));
      }

      return response;
    } catch (e) {
      // Gérer les exceptions
      print('Erreur lors de l\'enregistrement du produit : $e');
      // ignore: null_check_always_fails
      rethrow;
    }
  }

  // ::::::::::::::::::::::::::::::methode get

  // Future<List<Produit>> fetchProductData() async {
  //   List<Produit> produits = [];
  //   try {
  //     final response =
  //         await http.get(Uri.parse('http://localhost:8080/typeProduits/list'));

  //     if (response.statusCode == 200) {
  //       // Si la requête est un succès, vous pouvez traiter les données ici
  //       Produit jsonData = jsonDecode(response.body);
  //       // Faire quelque chose avec les données récupérées
  //       print(jsonData);
  //       List<Produit> productList = jsonData.map((productData) {
  //         return Produit.fromJson(productData);
  //       }).toList();
  //       return productList;
  //     } else {
  //       // Gérer les erreurs de réponse HTTP
  //       print(
  //           'Erreur lors de la récupération des données. Statut de réponse : ${response.body}');
  //       return [];
  //     }
  //   } catch (e) {
  //     // Gérer les exceptions
  //     print('Erreur lors de la récupération des données : $e');
  //     rethrow;
  //   }
  // }
}

class ProduitProvider {
  MyDataProduit? data;
  List<Produit> produits = [];

  Future<List<Produit>> getDataProduits() async {
    try {
      const apiUrl =
          ('http://localhost:8080/typeProduits/list'); // Remplacez par l'URL réelle de votre API

      final response = await http.get(Uri.parse(apiUrl));

      // Vérifier si la requête a réussi (code d'état 200)
      if (response.statusCode == 200) {
        List<dynamic> result = jsonDecode(response.body);
        //print('----result----${result}');

        //produits = result.map((json) => Produit.fromMap(json)).toList();
        List<Produit> produits = [];
        List<Categories> categories = [];
        List<Artisan> artisans = [];

        for (var p in result) {
          print("=============/${p['produits']}");

          produits.add(Produit.fromMap(p['produits']));
          //print("====================");
          // artisans.add(Artisan.fromMap(p["artisans"]));
        }

        //print('------produit to list ${produits.toString()}');
        return produits;
      } else {
        // Si la requête n'a pas réussi, afficher le code d'erreur et le message
        print('ggggggg');
        throw Exception('error${response.body}');
      }
    } catch (e) {
      
      rethrow;
    }
  }
}
