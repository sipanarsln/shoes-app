class Product {
  final String brandName, description, image, productName, price;

  Product(
      {required this.image,
      required this.brandName,
      required this.description,
      required this.productName,
      required this.price});

  void dispose() {}
}
