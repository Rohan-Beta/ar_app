class ProductModel {
  final String id;
  final String name;
  final double price;
  final String imagePath;
  final String modelPath;

  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.modelPath,
  });

  static const products = [
    ProductModel(
      id: 'product_1',
      name: 'Apple Watch',
      price: 799.99,
      imagePath: 'MyAssets/imagess/applewatch.png',
      modelPath: 'MyAssets/gltf/applewatch.gltf',
    ),
    ProductModel(
      id: 'product_2',
      name: 'Macbook Pro',
      price: 599.99,
      imagePath: 'MyAssets/imagess/macbookpro.png',
      modelPath: 'MyAssets/gltf/macbookpro.gltf',
    ),
    ProductModel(
      id: 'product_3',
      name: 'Polaroidgo',
      price: 299.99,
      imagePath: 'MyAssets/imagess/polaroidgo.png',
      modelPath: 'MyAssets/gltf/polaroidgo.gltf',
    ),
    ProductModel(
      id: 'product_4',
      name: 'superkidrobot',
      price: 199.99,
      imagePath: 'MyAssets/imagess/superkidrobot.png',
      modelPath: 'MyAssets/gltf/superkidrobot.gltf',
    ),
  ];
}
