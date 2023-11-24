// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'dart:convert';

import 'package:flutter/material.dart';

// ignore_for_file: file_names

class CouleursProduit {
  final int? idCouleur;
  final String libelle;
  CouleursProduit({
    this.idCouleur,
    required this.libelle,
  });

  CouleursProduit copyWith({
    int? idCouleur,
    String? libelle,
  }) {
    return CouleursProduit(
      idCouleur: idCouleur ?? this.idCouleur,
      libelle: libelle ?? this.libelle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idCouleur': idCouleur,
      'libelle': libelle,
    };
  }

  factory CouleursProduit.fromMap(Map<String, dynamic> map) {
    return CouleursProduit(
      idCouleur: map['idCouleur'] != null ? map['idCouleur'] as int : null,
      libelle: map['libelle'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CouleursProduit.fromJson(String source) =>
      CouleursProduit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Couleurs(idCouleur: $idCouleur, libelle: $libelle)';

  @override
  bool operator ==(covariant CouleursProduit other) {
    if (identical(this, other)) return true;

    return other.idCouleur == idCouleur && other.libelle == libelle;
  }

  @override
  int get hashCode => idCouleur.hashCode ^ libelle.hashCode;

  
}
