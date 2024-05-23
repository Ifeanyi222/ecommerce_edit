class Product {
  final String name;
  final String price;
  final String stock;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.stock,
    required this.description,
  });
}

void main() {
  // Creating instances of Product class
  Product product1 = Product(
    name: 'Laptop',
    price: '\$999',
    stock: 'In Stock',
    description: 'Powerful laptop for all your needs.',
  );

  Product product2 = Product(
    name: 'Smartphone',
    price: '\$599',
    stock: 'Out of Stock',
    description: 'The latest smartphone with advanced features.',
  );

  Product product3 = Product(
    name: 'Headphones',
    price: '\$99',
    stock: 'In Stock',
    description: 'High-quality headphones for immersive sound experience.',
  );

  // Printing details of the products
  print(
      'Product 1: ${product1.name}, Price: ${product1.price}, Stock: ${product1.stock}, Description: ${product1.description}');
  print(
      'Product 2: ${product2.name}, Price: ${product2.price}, Stock: ${product2.stock}, Description: ${product2.description}');
  print(
      'Product 3: ${product3.name}, Price: ${product3.price}, Stock: ${product3.stock}, Description: ${product3.description}');
}
