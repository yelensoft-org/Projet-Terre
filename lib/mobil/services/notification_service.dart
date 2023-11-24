import 'dart:convert';

import 'package:art_eshop/mobil/models/notification_Entity.dart';
import 'package:http/http.dart' as http;

class NotificationService {
  Future<List<NotificationClass>> listNotification() async {
    List<NotificationClass> notification;
    try {
      const apiUrl = ('http://localhost:8080/notification/list');
      final response = await http.get(Uri.parse(apiUrl));

      // Vérifier si la requête a réussi (code d'état 200)
      if (response.statusCode == 200) {
        print("-------${response.body}-------");
        List<dynamic> result = json.decode(response.body);
        print('---------------result ${result}---------');

        notification = 
        result.map((json) => NotificationClass.fromMap(json)).toList();

        print('-------list-----${notification.toString()}');
        return notification;
      } else {
        throw Exception("nontification non trover : ${response.body}");
        // Si la requête n'a pas réussi, afficher le code d'erreur et le message
      }
    } catch (e) {
      print('Erreur lors de la recuperation des notification : ${e}');
      rethrow;
    }
  }
}
