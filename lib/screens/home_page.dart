import 'package:flutter/material.dart';
import 'package:flutter_kahvecisi/screens/contact_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text('Coffee Shop'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Sepete gitme işlemleri
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Anasayfa'),
              onTap: () {
                // Ana sayfaya yönlendirme işlemleri
              },
            ),
            ListTile(
              title: Text('Ürünler'),
              onTap: () {
                // Ürünler sayfasına yönlendirme işlemleri
              },
            ),
            ListTile(
              title: Text('Hakkımızda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
            ),
            ListTile(
              title: Text('İletişim'),
              onTap: () {
                // İletişim sayfasına yönlendirme işlemleri
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(height: 16),
            Text(
              'Welcome to Coffee Shop',
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage('assets/images/coffee_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Today\'s Special',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            const SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/special_coffee.jpg',
                  width: 60,
                  height: 60,
                ),
                title: const Text(
                  'Caramel Latte',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle:
                    const Text('Smooth and creamy coffee with caramel flavor'),
                trailing: Text(
                  '\$4.99',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.brown[900],
                  ),
                ),
                onTap: () {
                  // Ürün detayına yönlendirme işlemleri
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Our Menu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
            ),
            const SizedBox(height: 8),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/espresso.jpg',
                  width: 60,
                  height: 60,
                ),
                title: const Text('Espresso'),
                subtitle: const Text('Strong and concentrated coffee'),
                trailing: const Text('\$2.99'),
                onTap: () {
                  // Ürün detayına yönlendirme işlemleri
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/cappuccino.jpg',
                  width: 60,
                  height: 60,
                ),
                title: const Text('Cappuccino'),
                subtitle: const Text('Espresso with steamed milk and foam'),
                trailing: const Text('\$3.99'),
                onTap: () {
                  // Ürün detayına yönlendirme işlemleri
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/latte.jpg',
                  width: 60,
                  height: 60,
                ),
                title: const Text('Latte'),
                subtitle: const Text('Espresso with steamed milk'),
                trailing: const Text('\$3.99'),
                onTap: () {
                  // Ürün detayına yönlendirme işlemleri
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
