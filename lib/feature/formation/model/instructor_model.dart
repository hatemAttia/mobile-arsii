class Instructor {
  final String image;
  final String name;
  final String role;

  Instructor({
    required this.image,
    required this.name,
    required this.role,
  });
}

final instructors = [
  Instructor(image: "assets/besma.jpeg", name: "Besma", role: " Dev"),
  Instructor(image: "assets/hattem.jpeg", name: "hattem", role: "Dev"),
  Instructor(image: "assets/sirine.jpeg", name: "sirine", role: "Mobile Dev"),
];
