import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Page6()));
}

class Page6 extends StatelessWidget {
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
                      image: AssetImage('assets/images/logo11.png'),
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
                  Text(
                    "Restaurant Name",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.green, size: 18),
                      Text(" 1.2 km from Location"),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View on Google Maps",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star, color: Colors.orange, size: 20),
                      Icon(Icons.star_half, color: Colors.orange, size: 20),
                      SizedBox(width: 8),
                      Text("4.5"),
                    ],
                  ),
                  SizedBox(height: 12),

                  // Description
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 12),

                  // Facilities
                  Text(
                    "Facilities",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.green),
                      SizedBox(width: 8),
                      Text("Snack bar"),
                      SizedBox(width: 16),
                      Icon(Icons.check, color: Colors.green),
                      SizedBox(width: 8),
                      Text("Toilet"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.green),
                      SizedBox(width: 8),
                      Text("Bikes and Car Parking"),
                      SizedBox(width: 16),
                      Icon(Icons.check, color: Colors.green),
                      SizedBox(width: 8),
                      Text("24/7 Water Facility"),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Best Offers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Offers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        OfferCard("assets/images/logo3.png"),
                        OfferCard("assets/images/logo4.png"),
                        OfferCard("assets/images/logo5.png"),
                        OfferCard("assets/images/logo2.png"),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),

            // View Available Tables Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "View Available Tables",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Offer Card Widget
class OfferCard extends StatelessWidget {
  final String imagePath;

  OfferCard(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
