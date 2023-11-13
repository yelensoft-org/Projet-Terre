// ignore_for_file: file_names

class Artisan {
   final int? idArtisan;
   final String? photo;
  final String? nom;
  final String? prenom;
  final String? email;
  final String? password;
  final String? region;
  final String? telephone;
  final String? entreprise;
  final String? sexe;
  final String? description;
  final bool? active;

   Artisan( {
    this.idArtisan,
    this.photo,
    this.nom,
    this.prenom,
    this.email,
    this.password,
    this.region,
    this.telephone,
    this.entreprise,
    this.sexe,
    this.description,
     this.active,

  });

  factory Artisan.fromJson(Map<String, dynamic> json) {
    return Artisan(
      idArtisan: json['idArtisan'],
      photo: json['photo'],
      nom: json['nom'],
      prenom: json['prenom'],
      email: json['email'],
      password: json['password'],
      region: json['region'],
      telephone: json['telephone'],
      entreprise: json['entreprise'],
      sexe: json['sexe'],
      description: json['description'],
      active: json['active'],
    );
  }
  bool selected = false;
}

class MyData {
  List<Artisan> items;

  MyData({required this.items});

  factory MyData.fromJson(List<dynamic> json) {
    List<Artisan> items = json.map((item) => Artisan.fromJson(item)).toList();
    return MyData(items: items);
  }
}