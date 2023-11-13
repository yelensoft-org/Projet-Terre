import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';

class ProfilAdmin extends StatefulWidget {
  const ProfilAdmin({super.key});

  @override
  State<ProfilAdmin> createState() => _ProfilAdminState();
}

class _ProfilAdminState extends State<ProfilAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Couleurs.orange),
              ),
              Container(),
              Container()
            ],
          )
        ],
      ),
    );
  }
}