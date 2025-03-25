import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/pagecok.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo1.png", height: 30),
            const SizedBox(width: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "AR",
                    style: TextStyle(
                      color: Color.fromARGB(232, 3, 240, 90),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: "estro",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(backgroundImage: AssetImage("assets/images/men.png")),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search for food, restaurants...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Popular Restaurants",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return _buildPopularRestaurant(context);
                  },
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                "Restaurants Nearby",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Column(
                children: List.generate(
                  3,
                  (index) => _buildNearbyRestaurant(context),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7,
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            label: "Cart",
          ),
        ],
      ),
    );
  }

  Widget _buildPopularRestaurant(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Cok()));
      },
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/logo11.png",
                height: 90,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Restaurant Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 16),
                Text(" 4.8"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNearbyRestaurant(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/cok'); // Yo‘nalishni to‘g‘ri tekshiring
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.asset(
                "assets/images/logo11.png",
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Restaurant Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Restaurant Description",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(" 4.8"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
