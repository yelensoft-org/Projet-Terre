
// ignore_for_file: file_names

class Admin {
  final int? idAdmin;
  final int? photo;
  final String nom;
  final String prenom;
  final String email;
  final String password;
  final String sexe;
  final String telephone;

  const Admin(
      { this.idAdmin,
      this.photo,
      required this.nom,
      required this.prenom,
      required this.email,
      required this.password,
      required this.sexe,
      required this.telephone});

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      idAdmin: json['idAdmin'],
      photo: json['photo'],
      nom: json['nom'],
      prenom: json['prenom'],
      email: json['email'],
      password: json['password'],
      telephone: json['telephone'],
      sexe: json['sexe'],
    );
    
  }
}
