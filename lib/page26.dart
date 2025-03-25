import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/thank.dart';
import 'package:imtihon_flutter2/page1.dart';
import 'accounts.dart'; // O‘tmoqchi bo‘lgan sahifani shu yerga qo‘shing

class Page26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountsPage()),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/men.png'),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Order details',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            _buildFoodItem(
              'Chicken Burger',
              'Burger Factory LTD',
              200,
              'assets/images/logo9.png',
            ),
            SizedBox(height: 20),
            _buildFoodItem(
              'Onion Pizza',
              'Pizza Palace',
              500,
              'assets/images/logo10.png',
            ),
            const SizedBox(height: 16),
            _buildFoodItem(
              'Spicy Shawarma',
              'Hot Cool Spot',
              250,
              'assets/images/logo12.png',
            ),
            const SizedBox(height: 16),
            _buildSummaryCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(
    String name,
    String place,
    int price,
    String imagePath,
  ) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(place, style: TextStyle(color: Colors.grey)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(icon: Icon(Icons.remove), onPressed: () {}),
            Text('1', style: TextStyle(fontSize: 16)),
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(BuildContext context) {
    return Card(
      color: Colors.green.shade900,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSummaryRow('Sub-Total', 'Rs 950'),
            _buildSummaryRow('Delivery Charge', 'Rs 50'),
            _buildSummaryRow('Discount', 'Rs 0'),
            Divider(color: Colors.white),
            _buildSummaryRow('Total', 'Rs 1,000', isBold: true),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThankScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green.shade900,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Place My Order'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
