// import 'package:firebase_auth/firebase_auth.dart';
import 'package:Art_Eshop/desktop/pages/produit.dart';
import 'package:Art_Eshop/desktop/pages/sidebar_menu.dart';
import 'package:Art_Eshop/mobil/models/couleur.dart';
import 'package:Art_Eshop/mobil/pages/accueil.dart';
import 'package:Art_Eshop/mobil/pages/login.dart';
import 'package:Art_Eshop/mobil/pages/page_bienvenue.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;

    Widget defaultPage;

    if (screenWith < 475) {
      defaultPage = const Accueil();
    } else {
      defaultPage = const SidebarMenu();
    }
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'ArtiEshop Mali',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Couleurs.orange,
        ),
        fontFamily: 'Poppins',
      ),
      home: defaultPage,
    );
  }
}
