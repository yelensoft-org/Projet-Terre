// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:art_eshop/mobil/models/commande_Entity.dart';

class Achat {
  int idAchat;
  List<Commande> commandes;
  Achat({
    required this.idAchat,
    required this.commandes,
  });

  Achat copyWith({
    int? idAchat,
    List<Commande>? commandes,
  }) {
    return Achat(
      idAchat: idAchat ?? this.idAchat,
      commandes: commandes ?? this.commandes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idAchat': idAchat,
      'commandes': commandes.map((x) => x.toMap()).toList(),
    };
  }

  factory Achat.fromMap(Map<String, dynamic> map) {
    return Achat(
      idAchat: map['idAchat'] as int,
      commandes: List<Commande>.from((map['commandes'] as List<int>).map<Commande>((x) => Commande.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory Achat.fromJson(String source) => Achat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Achat(idAchat: $idAchat, commandes: $commandes)';

  @override
  bool operator ==(covariant Achat other) {
    if (identical(this, other)) return true;
  
    return 
      other.idAchat == idAchat &&
      listEquals(other.commandes, commandes);
  }

  @override
  int get hashCode => idAchat.hashCode ^ commandes.hashCode;
}
