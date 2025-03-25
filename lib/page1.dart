import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/log3page.dart';
import 'package:imtihon_flutter2/page4.dart';
import 'package:imtihon_flutter2/page5.dart';
import 'food1.dart';
import 'food2.dart';
import 'food3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
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
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/men.png"),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/images/logo2.png"),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Special Offer for March",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "We are here with the Best Burgers in town.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {},
                            child: const Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Search Box
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for food, restaurants...",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Best Offers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.local_fire_department,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                    child: const Text(
                      "See all  >",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFoodItem(
                      context,
                      "Mo:Mo",
                      "Delicious steamed dumplings",
                      310,
                      "assets/images/logo10.png",
                      Fodd1(),
                    ),
                    _buildFoodItem(
                      context,
                      "Pizza",
                      "Cheesy & Hot",
                      285,
                      "assets/images/logo12.png",
                      Fodd2(),
                    ),
                    _buildFoodItem(
                      context,
                      "Burger",
                      "Juicy & Tasty",
                      320,
                      "assets/images/logo9.png",
                      Fodd3(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Restaurants Nearby",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.local_fire_department,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5()),
                      );
                    },
                    child: const Text(
                      "See all  >",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildRestaurantItem("assets/images/logo6.png"),
                    _buildRestaurantItem("assets/images/logo7.png"),
                    _buildRestaurantItem("assets/images/logo8.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
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

  Widget _buildFoodItem(
    BuildContext context,
    String name,
    String details,
    int price,
    String imagePath,
    Widget page,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: 190,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imagePath, height: 80, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    details,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Rs $price",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantItem(String imagePath) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
