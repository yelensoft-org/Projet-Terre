import 'package:art_eshop/desktop/pages/admin_mot_de_passe_oublier.dart';
import 'package:art_eshop/desktop/pages/admin_reunitialise_mot%20_de_passe.dart';
import 'package:art_eshop/desktop/pages/admini_nouveau_mot_de_passe.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'side_bar_controller.dart';
import 'package:art_eshop/mobil/models/dalog.dart';

class SideBarPage extends StatefulWidget {
  const SideBarPage({super.key});

  @override
  State<SideBarPage> createState() => _SideBarPageState();
}

class _SideBarPageState extends State<SideBarPage> {
  Popup popup = Popup();

  @override
  Widget build(BuildContext context) {
    final sideBarController = context.watch<SideBarController>();
    sideBarController.initNavigationRail();
    return Scaffold(
        // appBar: AppBar(
        //     leading: Row(
        //   mainAxisSize: MainAxisSize.m
        body: Row(children: [
      sideBarController.navigationRail,
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 8),
            // height: 50,
            color: Couleurs.blanc,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    onPressed: () {
                      sideBarController.toggleNavigation();
                    },
                    icon: const Icon(
                      Icons.menu,
                    )),
                const Spacer(),
                InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             const AdminReunitialisation()));
                      // popup.notificationAdmin(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Couleurs.orange,
                    )
                    //  Container(
                    //   // height: 200,
                    //   // width: 200,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(width: 1, color: Couleurs.blanc),
                    //       shape: BoxShape.circle),
                    //   // child: Image.asset('assets/images/1024.png'),
                    // )
                    )
              ],
            ),
          ),
          Expanded(child: sideBarController.page),
        ],
      ))
    ]));
  }
}