class Food {
  final String name;
  final String imagePath;
  final double price;
  final double rating;
  final String description;

  Food({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.description,
  });

  String get _name => name;
  String get _imagePath => imagePath;
  double get _price => price;
  double get _rating => rating;
  String get _description => description;
}
