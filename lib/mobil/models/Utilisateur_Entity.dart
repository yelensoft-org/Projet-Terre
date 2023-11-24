// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Utilisateur {

  int? idUser;
  String? nom;
  String? prenom;
  String? email;
  String? password;
  String? pays;
  String? adresse;
  Utilisateur({
    this.idUser,
   this.nom,
   this.prenom,
   this.email,
   this.password,
   this.pays,
   this.adresse,
  });

  Utilisateur copyWith({
    int? idUser,
    String? nom,
    String? prenom,
    String? email,
    String? password,
    String? pays,
    String? adresse,
  }) {
    return Utilisateur(
      idUser: idUser,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      email: email ?? this.email,
      password: password ?? this.password,
      pays: pays ?? this.pays,
      adresse: adresse ?? this.adresse,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUser': idUser,
      'nom': nom,
      'prenom': prenom,
      'email': email,
      'password': password,
      'pays': pays,
      'adresse': adresse,
    };
  }

  factory Utilisateur.fromMap(Map<String, dynamic> map) {
    return Utilisateur(
      idUser: map['idUser'],
      nom: map['nom'] as String,
      prenom: map['prenom'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      pays: map['pays'] as String,
      adresse: map['adresse'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Utilisateur.fromJson(String source) => Utilisateur.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Utilisateur(idUser: $idUser, nom: $nom, prenom: $prenom, email: $email, password: $password, pays: $pays, adresse: $adresse)';
  }

  @override
  bool operator ==(covariant Utilisateur other) {
    if (identical(this, other)) return true;
  
    return 
      other.idUser == idUser &&
      other.nom == nom &&
      other.prenom == prenom &&
      other.email == email &&
      other.password == password &&
      other.pays == pays &&
      other.adresse == adresse;
  }

  @override
  int get hashCode {
    return idUser.hashCode ^
      nom.hashCode ^
      prenom.hashCode ^
      email.hashCode ^
      password.hashCode ^
      pays.hashCode ^
      adresse.hashCode;
  }
}
