import 'dart:convert';
import 'dart:io';

import 'package:art_eshop/mobil/models/Artisan_Entity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ArtisantService extends ChangeNotifier {
  Artisan artisan = Artisan();
  int indexPage = 0;

  Future<http.Response> enregistrerArtisan(
      Artisan artisan, File imageFile) async {
    try {
      final url = Uri.parse('http://10.0.2.2:8080/artisan/create');

      var request = http.MultipartRequest('POST', url);
      request.fields["artisan"] = jsonEncode({
        'nom': artisan.nom,
        'photo': "",
        'prenom': artisan.prenom,
        'email': artisan.email,
        'password': artisan.password,
        'region': artisan.region,
        'telephone': artisan.telephone,
        'entreprise': artisan.entreprise,
        'sexe': artisan.sexe,
        'description': artisan.description,
      });

      var image = await http.MultipartFile.fromPath('photo', imageFile.path);
      request.files.add(image);
      debugPrint(imageFile.path);

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(
          streamedResponse); // Convertit le flux en une réponse

      if (response.statusCode == 200) {
        // L'enregistrement a réussi
        print('Artisan enregistré avec succès');
      } else {
        // Gérer les erreurs de réponse HTTP
        print(
            'Erreur lors de l\'enregistrement de l\'artisan. Statut de réponse : ${response.body}');
        // artisantNonActive = Artisan.fromJson(jsonDecode(response.body));
      }

      return response;
    } catch (e) {
      // Gérer les exceptions
      print('Erreur lors de l\'enregistrement de l\'artisan : $e');
      // ignore: null_check_always_fails
      return null!;
    }
  }

  // ::::::::::::::::::;;;;;methode pour modifier:;;::::::::::::::;
  Future<http.Response> modifierArtisan(Artisan artisan, File imageFile) async {
    try {
      final url = Uri.parse('http://10.0.2.2:8080/artisan/create');

      var request = http.MultipartRequest('PUT', url);
      request.fields["artisan"] = jsonEncode({
        'nom': artisan.nom,
        'photo': "",
        'prenom': artisan.prenom,
        'email': artisan.email,
        'password': artisan.password,
        'region': artisan.region,
        'telephone': artisan.telephone,
        'entreprise': artisan.entreprise,
        'sexe': artisan.sexe,
      });

      var image = await http.MultipartFile.fromPath('photo', imageFile.path);
      request.files.add(image);
      debugPrint(imageFile.path);

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(
          streamedResponse); // Convertit le flux en une réponse

      if (response.statusCode == 200) {
        // L'enregistrement a réussi
        print('Artisan enregistré avec succès');
      } else {
        // Gérer les erreurs de réponse HTTP
        print(
            'Erreur lors de l\'enregistrement de l\'artisan. Statut de réponse : ${response.body}');
        // artisantNonActive = Artisan.fromJson(jsonDecode(response.body));
      }

      return response;
    } catch (e) {
      // Gérer les exceptions
      print('Erreur lors de l\'enregistrement de l\'artisan : $e');
      // ignore: null_check_always_fails
      return null!;
    }
  }

  void changeIndex(int index, Artisan? art) {
    indexPage = index;
    if (art != null) {
      artisan = art;
    }
    notifyListeners();
  }
}

class MyHomePageProvider extends ChangeNotifier {
  MyData? data;
  List<Artisan> artisans = [];

  Future<List<Artisan>> getData() async {
    const apiUrl =
        ('http://localhost:8080/artisan/list'); // Remplacez par l'URL réelle de votre API

    // try {
    //   // Effectuer une requête GET vers l'API

    // } catch (error) {
    //   // Gérer les exceptions survenues pendant la requête
    //   print('Erreur : $error');
    // }
    final response = await http.get(Uri.parse(apiUrl));

    // Vérifier si la requête a réussi (code d'état 200)
    if (response.statusCode == 200) {
      // Décoder la réponse JSON
      // var mJson = json.decode(response.body);
      // print(mJson);
      List<dynamic> result = jsonDecode(response.body);
      print(result);

      // Convertir le JSON en votre modèle de données
      //data = MyData.fromJson(mJson);
      // Convertir chaque élément de la liste JSON en un objet Artisan
      //artisans = List<Artisan>.from());

      artisans = result.map((json) => Artisan.fromJson(json)).toList();

      // Avertir les auditeurs
      //notifyListeners();
      print(artisans.toString());
      return artisans;
    } else {
      // Si la requête n'a pas réussi, afficher le code d'erreur et le message
      throw Exception('error');
    }
  }
}
