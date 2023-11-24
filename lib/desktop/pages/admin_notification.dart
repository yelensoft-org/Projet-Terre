// import 'package:art_eshop/mobil/models/couleur.dart';
// import 'package:art_eshop/mobil/services/notification_service.dart';
// import 'package:flutter/material.dart';

// class AdminNotification extends StatefulWidget {
//   const AdminNotification({super.key});

//   @override
//   State<AdminNotification> createState() => _AdminNotificationState();
// }


//   NotificationService notificationService = NotificationService();
//   List<Notification> notifications = [];
//   Future<void> fetNotification() async {
//     await notificationService.listNotification().then((value) {
//       setState(() {
//         notifications = value;
//       });
//     }).catchError((err) {
//       print('Erreur lors de la récupération des catégories : $err');
//     });
//   }

  
  
//     void notificationAdmin(BuildContext context){
//        showDialog(
//         context: context,
//         builder: ((context) {
//           return Dialog(
//             child: Container(
//               width: MediaQuery.of(context).size.width / 2,
//               margin: EdgeInsets.all(20),
//               child: Column(children: [
//                 Expanded(
//                     child: ListView.builder(
//                   itemCount: 5,
//                   padding: const EdgeInsets.all(10),
//                   itemBuilder: (BuildContext context, index) {
//                     return InkWell(
//                         highlightColor: Couleurs.orange.withOpacity(0.5),
//                         borderRadius: BorderRadius.circular(5),
//                         child: Column(
//                           children: [
//                             Center(
//                                 child: Container(
//                               decoration: BoxDecoration(
//                                   // border: Border.all(width: 1),
//                                   // color: const Color.fromARGB(255, 46, 38, 38),
//                                   borderRadius: BorderRadius.circular(5)),
//                               // width: 200,

//                               child: Text(
//                                 "20/20/2033",
//                                 style: TextStyle(),
//                               ),
//                             )),
//                             Container(
//                               padding: const EdgeInsets.all(8),
//                               margin: const EdgeInsets.all(5),
//                               // height: 20,
//                               // width: 100,
//                               decoration: BoxDecoration(
//                                 color: Couleurs.blanc,
//                                 border:
//                                     Border.all(width: 1, color: Couleurs.gri),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     "votre produit de tel categorie a etais achete ou commende",
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.only(right: 10),
//                                         child: Text(
//                                           "11h:20",
//                                           style:
//                                               TextStyle(color: Couleurs.orange),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               child: Row(
//                                 children: [],
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 20,
//                             )
//                           ],
//                         ));
//                   },
//                 ))
//               ]),
//             ),
//           );
//         }));
//   },
//     }

    

    

