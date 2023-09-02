class Product {
  final String brandName, description, image, productName, price, brandImage;

  Product(
      {required this.image,
      required this.brandName,
      required this.description,
      required this.productName,
      required this.price,
      required this.brandImage});

  void dispose() {}
}
