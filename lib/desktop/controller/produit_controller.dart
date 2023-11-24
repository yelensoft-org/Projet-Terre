import 'package:art_eshop/desktop/pages/admin_list_produit.dart';
import 'package:art_eshop/desktop/pages/detail_produit.dart';
import 'package:flutter/material.dart';

class ProduitController extends ChangeNotifier {
  List<StatefulWidget> pages = [];
  int indicePage = 0;

  // Future<List<>> mesArtisans = ArtisanProvider().getData();

  // late Artisan currentArtisan;

  StatefulWidget get page {
    return pages[indicePage];
  }

  ProduitController() {
    pages = [
      const AdminListProduit(),
      const DetailProduit(),
    ];
  }

  gotoDetails() {
    indicePage = 1;
    notifyListeners();
  }

  gotoListArtisan() {
    indicePage = 0;
    notifyListeners();
  }
}