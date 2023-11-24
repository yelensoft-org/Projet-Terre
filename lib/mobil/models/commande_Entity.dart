// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'dart:convert';

import 'package:art_eshop/mobil/models/Produit_Entity.dart';
import 'package:art_eshop/mobil/models/achat_Entity.dart';
import 'package:art_eshop/mobil/models/panier_Entirty.dart';

class Commande {
  int? idCommande;
  double? quantite;
  Produit? produits;
  Panier? panier;
  Achat? achat;
  Commande({
    this.idCommande,
    this.quantite,
    this.produits,
    this.panier,
    this.achat,
  });

  Commande copyWith({
    int? idCommande,
    double? quantite,
    Produit? produits,
    Panier? panier,
    Achat? achat,
  }) {
    return Commande(
      idCommande: idCommande ?? this.idCommande,
      quantite: quantite ?? this.quantite,
      produits: produits ?? this.produits,
      panier: panier ?? this.panier,
      achat: achat ?? this.achat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idCommande': idCommande,
      'quantite': quantite,
      'produits': produits?.toMap(),
      'panier': panier?.toMap(),
      'achat': achat?.toMap(),
    };
  }

  factory Commande.fromMap(Map<String, dynamic> map) {
    return Commande(
      idCommande: map['idCommande'] != null ? map['idCommande'] as int : null,
      quantite: map['quantite'] != null ? map['quantite'] as double : null,
      produits: map['produits'] != null ? Produit.fromMap(map['produits'] as Map<String,dynamic>) : null,
      panier: map['panier'] != null ? Panier.fromMap(map['panier'] as Map<String,dynamic>) : null,
      achat: map['achat'] != null ? Achat.fromMap(map['achat'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Commande.fromJson(String source) => Commande.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Commande(idCommande: $idCommande, quantite: $quantite, produits: $produits, panier: $panier, achat: $achat)';
  }

  @override
  bool operator ==(covariant Commande other) {
    if (identical(this, other)) return true;
  
    return 
      other.idCommande == idCommande &&
      other.quantite == quantite &&
      other.produits == produits &&
      other.panier == panier &&
      other.achat == achat;
  }

  @override
  int get hashCode {
    return idCommande.hashCode ^
      quantite.hashCode ^
      produits.hashCode ^
      panier.hashCode ^
      achat.hashCode;
  }
  }
