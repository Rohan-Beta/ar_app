class Product {
  final String id;
  final String name;
  final double price;
  final String imagePath;
  final String modelPath;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.modelPath,
  });

  static const products = [
    Product(
      id: 'product_1',
      name: 'Apple Watch',
      price: 799.99,
      imagePath: 'assets/imagess/applewatch.png',
      modelPath: 'assets/gltf/applewatch.gltf',
    ),
    Product(
      id: 'product_2',
      name: 'Macbook Pro',
      price: 599.99,
      imagePath: 'assets/imagess/macbookpro.png',
      modelPath: 'assets/gltf/macbookpro.gltf',
    ),
    Product(
      id: 'product_3',
      name: 'Polaroidgo',
      price: 299.99,
      imagePath: 'assets/imagess/polaroidgo.png',
      modelPath: 'assets/gltf/polaroidgo.gltf',
    ),
    Product(
      id: 'product_4',
      name: 'superkidrobot',
      price: 199.99,
      imagePath: 'assets/imagess/superkidrobot.png',
      modelPath: 'assets/gltf/superkidrobot.gltf',
    ),
  ];
}