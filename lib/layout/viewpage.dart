import 'package:flutter/material.dart';

class viewpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fan'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.sort),
                  label: Text('Sort'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.price_change),
                  label: Text('Price'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list),
                  label: Text('Filters'),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.65,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple[50],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        // selectedItemColor: Colors.deepPurple,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 4.0),
                Text(
                  '₹${product.price}',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  '${product.discount}% off',
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Text('${product.rating}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final int discount;
  final double rating;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.discount,
    required this.rating,
    required this.imageUrl,
  });
}

List<Product> products = [
  Product(
    name: 'I Phone15',
    price: 75000,
    discount: 10,
    rating: 3.5,
    imageUrl: 'assets/1.jpeg',
  ),
  Product(
    name: 'Samsung Galaxy',
    price: 7500,
    discount: 15,
    rating: 3.5,
    imageUrl: 'assets/2.jpeg',
  ),
  Product(
    name: 'I Phone15 Pro',
    price: 84000,
    discount: 10,
    rating: 3.5,
    imageUrl: 'assets/3.jpeg',
  ),
  Product(
    name: 'Realme Tab',
    price: 60000,
    discount: 10,
    rating: 4.5,
    imageUrl: 'assets/4.jpeg',
  ),
];
