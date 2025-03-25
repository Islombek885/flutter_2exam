import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/momo.dart';
// import 'package:imtihon_flutter2/page6.dart';
import 'package:imtihon_flutter2/pizza.dart';
import 'package:imtihon_flutter2/xod7.dart';
// import 'package:imtihon_flutter2/page7.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          CircleAvatar(backgroundImage: AssetImage('assets/images/men.png')),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 23),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search for food, restaurants...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    _buildCategoryButton(
                      context,
                      "Mo:mo",
                      "assets/images/logo9.png",
                      Momo(),
                    ),
                    const SizedBox(height: 22),
                    _buildCategoryButton(
                      context,
                      "Pizza",
                      "assets/images/logo10.png",
                      Pizza(),
                    ),
                    const SizedBox(height: 22),
                    _buildCategoryButton(
                      context,
                      "Burger",
                      "assets/images/logo12.png",
                      Xod7(),
                    ),
                    const SizedBox(height: 22),
                  ],
                ),
              ),
            ),
          ],
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
}

Widget _buildCategoryButton(
  BuildContext context,
  String title,
  String imagePath,
  Widget page,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 10),
      SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildFoodCard(context, "Veg $title", imagePath, page),
            _buildFoodCard(context, title, imagePath, page),
            _buildFoodCard(context, "Special $title", imagePath, page),
          ],
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget _buildFoodCard(
  BuildContext context,
  String title,
  String imagePath,
  Widget page,
) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
      width: 152,
      height: 220,
      margin: const EdgeInsets.only(right: 10),
      child: Card(
        child: Column(
          children: [
            Image.asset(imagePath, height: 80, fit: BoxFit.cover),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Text("Rs. 250", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    ),
  );
}
