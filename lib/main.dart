import 'dart:io';

import 'package:art_eshop/desktop/controller/artisan_controller.dart';
import 'package:art_eshop/desktop/controller/culture_controller.dart';
import 'package:art_eshop/desktop/controller/operation_controller.dart';
import 'package:art_eshop/desktop/controller/produit_controller.dart';
import 'package:art_eshop/desktop/controller/side_bar/side_bar_controller.dart';
import 'package:art_eshop/desktop/controller/side_bar/side_bar_page.dart';
import 'package:art_eshop/desktop/model/theme_fluent.dart';
import 'package:art_eshop/desktop/pages/admin.dart';
import 'package:art_eshop/desktop/pages/detail_artisan.dart';
import 'package:art_eshop/mobil/models/controller_mobil/bottom_navigation_bar.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:art_eshop/mobil/models/formulaire_produit.dart';
import 'package:art_eshop/mobil/models/spinner_page.dart';
import 'package:art_eshop/mobil/pages/artisan_inscription.dart';
import 'package:art_eshop/mobil/pages/artisan_modifier_produit.dart';
import 'package:art_eshop/mobil/pages/artisan_notification.dart';
import 'package:art_eshop/mobil/pages/inscription.dart';
import 'package:art_eshop/mobil/pages/login.dart';
import 'package:art_eshop/mobil/pages/mot_de_pass_oublier.dart';
import 'package:art_eshop/mobil/pages/nouveau_mot_de_passe.dart';
import 'package:art_eshop/mobil/pages/page_bienvenue.dart';
import 'package:art_eshop/mobil/pages/panier.dart';
import 'package:art_eshop/mobil/pages/produit_detail.dart';
import 'package:art_eshop/mobil/pages/profil_artisan.dart';
import 'package:art_eshop/mobil/pages/profil_utilisateur.dart';
import 'package:art_eshop/mobil/pages/reunitialiser_mot_de_passe.dart';
import 'package:art_eshop/mobil/pages/utilisateur_culture_detail.dart';
import 'package:art_eshop/mobil/pages/utilisateur_mode_paiement.dart';
import 'package:art_eshop/mobil/pages/utilisateur_payement.dart';
import 'package:art_eshop/mobil/services/artisan_service.dart';
import 'package:art_eshop/mobil/services/image_picture.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'mobil/pages/utilisateur_culture.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  if (!kIsWeb) {
    runApp(const MyAppMobile());
  } else {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ArtisantService(),
        )
      ],
      child: const MyAppDesktop(),
    ));
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
      home: const PageBienvenue(),
    );
  }
}

class MyAppDesktop extends StatelessWidget {
  const MyAppDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SideBarController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ArtisanController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CultureController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProduitController(),
        ),
        ChangeNotifierProvider(
          create: (context) => OperationController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SideBarPage(),
      ),
    );
  }
}
