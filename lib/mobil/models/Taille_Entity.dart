// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: file_names

class TailleProduit {
  final int? idTaille;
  final String libelle;
  TailleProduit({
    this.idTaille,
    required this.libelle,
  });

  

  TailleProduit copyWith({
    int? idTaille,
    String? libelle,
  }) {
    return TailleProduit(
      idTaille: idTaille ?? this.idTaille,
      libelle: libelle ?? this.libelle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idTaille': idTaille,
      'libelle': libelle,
    };
  }

  factory TailleProduit.fromMap(Map<String, dynamic> map) {
    return TailleProduit(
      idTaille: map['idTaille'] != null ? map['idTaille'] as int : null,
      libelle: map['libelle'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TailleProduit.fromJson(String source) => TailleProduit.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TailleProduit(idTaille: $idTaille, libelle: $libelle)';

  @override
  bool operator ==(covariant TailleProduit other) {
    if (identical(this, other)) return true;
  
    return 
      other.idTaille == idTaille &&
      other.libelle == libelle;
  }

  @override
  int get hashCode => idTaille.hashCode ^ libelle.hashCode;
}
