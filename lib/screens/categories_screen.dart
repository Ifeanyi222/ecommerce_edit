import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'profile_screen.dart';
import '../widgets/product_item.dart';
import '../screens/Product_DetailsScreen.dart';

class CategoriesScreen extends StatelessWidget {
  final String category;

  const CategoriesScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'name': 'Product 1',
        'price': '\$100',
        'stock': 'In Stock',
        'description': 'Description 1'
      },
      {
        'name': 'Product 2',
        'price': '\$150',
        'stock': 'In Stock',
        'description': 'Description 2'
      },
      {
        'name': 'Product 3',
        'price': '\$200',
        'stock': 'Out of Stock',
        'description': 'Description 3'
      },
      {
        'name': 'Product 4',
        'price': '\$250',
        'stock': 'In Stock',
        'description': 'Description 4'
      },
      {
        'name': 'Product 5',
        'price': '\$300',
        'stock': 'In Stock',
        'description': 'Description 5'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the ProductDetailsScreen with the selected product
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    product: products[index],
                  ),
                ),
              );
            },
            child: ProductItem(
              name: products[index]['name']!,
              price: products[index]['price']!,
              stock: products[index]['stock']!,
              description: products[index]['description']!,
            ),
          );
        },
      ),
    );
  }
}
