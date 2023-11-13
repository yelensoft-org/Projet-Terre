
class Categories {
  final int id;
  final String nom;

  const Categories({
    required this.id,
    required this.nom,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['idCategorie'],
      nom: json['nom'],
    );
  }
}