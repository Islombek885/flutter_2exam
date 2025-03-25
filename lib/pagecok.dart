import 'package:flutter/material.dart';

class Cok extends StatelessWidget {
  const Cok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
        actions: const [
          CircleAvatar(backgroundImage: AssetImage("assets/images/men.png")),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/images/logo11.png"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Restaurant Name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star_border, color: Colors.orange, size: 18),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.green),
                  const SizedBox(width: 5),
                  const Text("1.2 km from Location"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View on Google Maps",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 15),
              const Text(
                "Facilities",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 5),
                  Text("Snack bar"),
                  Spacer(),
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 5),
                  Text("Toilet"),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 5),
                  Text("Bikes and Car Parking"),
                  Spacer(),
                  Icon(Icons.check, color: Colors.green),
                  SizedBox(width: 5),
                  Text("24/7 Water facility"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best Offers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all  >",
                      style: TextStyle(color: Colors.blue),
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
                    _buildFoodItem("assets/images/logo9.png"),
                    _buildFoodItem("assets/images/logo10.png"),
                    _buildFoodItem("assets/images/logo12.png"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text("View Available Tables"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imagePath) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
