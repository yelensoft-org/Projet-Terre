import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class DasbordAdmin extends StatefulWidget {
  const DasbordAdmin({super.key});

  @override
  State<DasbordAdmin> createState() => _DasbordAdminState();
}

class _DasbordAdminState extends State<DasbordAdmin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        height: 500,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 500,
                color: Couleurs.gri,
                child: Column(children: [
      
                ]),
                
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 500,
                color: Couleurs.orange,
                child: Column(children: [
                  
                ]),
                
              ),
            )
      
          ],
        ),
      ),
      
    );
  }
}