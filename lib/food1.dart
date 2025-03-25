import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/page26.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Fodd1()));
}

class Fodd1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo10.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: Row(
                    children: [
                      Icon(Icons.menu, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'ARestro',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/men.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 244, 246, 247),
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Popular",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.place),
                      const SizedBox(width: 20),
                      const Icon(Icons.favorite),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Chicken Burger \nPromo Pack",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.orange, size: 24),
                          SizedBox(width: 5),
                          Text(
                            "4.8 Rating",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Row(
                        children: const [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.green,
                            size: 24,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "2000+ Order",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Nulla occaecat velit laborum exercitation \nullamco. Elit labore eu aute elit nostrud culpa \nvelit excepteur deserunt sunt. Velit non est \ncillum consequat cupidatat ex Lorem laboris \nlabore aliqua ad duis eu laborum.",
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page26()),
                );
          },
          child: Text(
            "Add to Cart",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
