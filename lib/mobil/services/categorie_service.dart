import 'dart:convert';

import 'package:art_eshop/mobil/models/Categories_Entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategorieService {
  // :::::::::::::::::::::::::methode pour ajouter une category:::::::::::::::;
  Future<http.Response> add(
    String nom,
  ) async {
    try {
      // Créez l'URI
      var uri = Uri.parse("http://10.0.2.2:8080/categorie/add");

      // En-têtes
      Map<String, String> headers = {"Content-Type": "application/json"};

      // Corps de la requête
      Map data = {
        'nom': nom,
      };

      // Convertit les données en JSON
      var body = json.encode(data);

      // Envoie la requête POST
      var response = await http.post(uri, headers: headers, body: body);
      debugPrint("je suis");
      debugPrint(body);

      // Vérifie le code de statut de la réponse
      if (response.statusCode == 200) {
        // Succès : Utilisateur créé avec succès
        // Stockez les données de l'utilisateur dans SharedPreferences

        return response;
      } else {
        // Échec : Gestion d'erreur en cas de code de statut non attendu
        throw Exception(
            'Erreur lors de la création de l\'utilisateur. Code de statut : ${response.statusCode}');
      }
    } catch (error) {
      // Gestion des erreurs générales (par exemple, perte de connexion)
      throw Exception('Une erreur s\'est produite : $error');
    }
  }

  // ::::::::::::::::::::methode pour afficher les categories::::::::::::::::::
  Future<List<Categories>> getAllCategories() async {
    try {
      // Définition de l'URI pour la requête HTTP GET
      var uri = Uri.parse("http://10.0.2.2:8080/categories/list");

      // Envoi de la requête HTTP GET et attente de la réponse
      var response = await http.get(uri);

      // Vérification du code de statut de la réponse
      if (response.statusCode == 200) {
        // Si le code de statut est 200 (OK), on décode la réponse JSON
        List<dynamic> categoriesJson = json.decode(response.body);
        debugPrint(response.body);

        // On transforme les données JSON en une liste d'objets Categories
        List<Categories> categories = categoriesJson
            .map((categoryJson) => Categories.fromJson(categoryJson))
            .toList();

        // On renvoie la liste des catégories récupérées
        print(categories);
        return categories;
      } else {
        // Si le code de statut est différent de 200, on lance une exception
        throw Exception(
            'Erreur lors de la récupération des catégories. Code de statut : ${response.statusCode}');
      }
    } catch (error) {
      // Capture et gestion des erreurs potentielles, y compris les erreurs réseau
      throw Exception(
          'Une erreur s\'est produite lors de la récupération des catégories : $error');
    }
  }
}
