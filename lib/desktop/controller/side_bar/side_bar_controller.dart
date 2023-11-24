// import 'package:faker/faker.dart';
// import 'package:fluent/home/home_page.dart';
// import 'package:fluent/parametre/parametre_page.dart';
import 'package:art_eshop/desktop/controller/pages_controller/pages_controller.dart';
import 'package:art_eshop/desktop/pages/admin_list_taille.dart';
import 'package:art_eshop/desktop/pages/dasboard.dart';
import 'package:art_eshop/desktop/pages/admin_list_produit.dart';
import 'package:art_eshop/mobil/models/couleur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBarController extends ChangeNotifier {
  bool isExtended;
  int index;

  SideBarController({
    this.isExtended = true,
    this.index = 0,
  });

  void toggleNavigation() {
    isExtended = !isExtended;
    notifyListeners();
  }

  void changePage(int value) {
    index = value;
    notifyListeners();
  }

  late Widget navigationRail;

  final pages = [
    const Dashboard(),
    const ProduitPage(),
    const ArtisanPage(),
    const CulturePage(),
    const OperationPage(),
    const ListTaille(),
  ];

  Widget get page {
    return pages[index];
  }

  initNavigationRail() {
    navigationRail = NavigationRail(
      minExtendedWidth: 150,
      backgroundColor: Couleurs.orange,
      extended: isExtended,
      leading: const CircleAvatar(
        radius: 48,
        // backgroundImage: Image.asset(''),
      ),
      onDestinationSelected: changePage,
      destinations: [
        NavigationRailDestination(
          icon: const Icon(Icons.dashboard),
          label: Text(
            "Dashboard",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),
        NavigationRailDestination(
          icon: SvgPicture.asset('icons/product.svg'),
          label: Text(
            "Produits",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),
        NavigationRailDestination(
          icon: SvgPicture.asset('icons/artis.svg'),
          label: Text(
            "Artisans",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),
        NavigationRailDestination(
          icon: SvgPicture.asset('icons/cult.svg'),
          label: Text(
            "Cultures",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),
        
        NavigationRailDestination(
          icon: SvgPicture.asset('icons/operation.svg'),
          label: Text(
            "Categories",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),

        NavigationRailDestination(
          icon: SvgPicture.asset('icons/operation.svg'),
          label: Text(
            "Tailles",
            style: TextStyle(color: Couleurs.blanc),
          ),
        ),
      ],
      selectedIndex: index,
    );
  }
}
