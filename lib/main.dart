import 'dart:io';

import 'package:art_eshop/desktop/model/theme_fluent.dart';
import 'package:art_eshop/desktop/pages/admin.dart';
import 'package:art_eshop/desktop/pages/detail_artisan.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/models/formulaire_produit.dart';
import 'package:art_eshop/mobil/pages/artisan_inscription.dart';
import 'package:art_eshop/mobil/pages/inscription.dart';
import 'package:art_eshop/mobil/pages/mot_de_pass_oublier.dart';
import 'package:art_eshop/mobil/pages/nouveau_mot_de_passe.dart';
import 'package:art_eshop/mobil/pages/page_bienvenue.dart';
import 'package:art_eshop/mobil/pages/produit_detail.dart';
import 'package:art_eshop/mobil/pages/profil_artisan.dart';
import 'package:art_eshop/mobil/pages/reunitialiser_mot_de_passe.dart';
import 'package:art_eshop/mobil/services/artisan_service.dart';
import 'package:art_eshop/mobil/services/image_picture.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  if (!kIsWeb) {
    runApp(const MyAppMobile());
  } else {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ArtisantService(),)
        ],
        child: const MyAppDesktop(),
      )
    );
  }
}

class MyAppMobile extends StatelessWidget {
  const MyAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtiEshop Mali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Couleurs.orange,
        ),
        fontFamily: 'Poppins',
      ),
      home: const ProduitDetail(),
    );
  }
}
// class MyAppDesktop extends StatelessWidget {
//   const MyAppDesktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ArtiEshop Mali',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Couleurs.orange,
//         ),
//         fontFamily: 'Poppins',
//       ),
//       home: const DashboardScreen(),
//     );
//   }
// }
// final _appTheme = AppTheme();

class MyAppDesktop extends StatelessWidget {
  const MyAppDesktop({super.key});

  

  @override
  Widget build(BuildContext context) {
    // final _appTheme = AppTheme();
    // var appTheme = AppTheme();
    return FluentApp(
      title: 'ArtiEshop Mali',
      debugShowCheckedModeBanner: false,
      theme: FluentThemeData(
        // accentColor: appTheme.color,
          fontFamily: 'Roboto',
          navigationPaneTheme: NavigationPaneThemeData(
              overlayBackgroundColor: Couleurs.blanc,
              backgroundColor: Couleurs.orange,
              itemHeaderTextStyle: TextStyle(color: Couleurs.blanc))),
      home: const DashboardScreen(),
    );
  }
}
