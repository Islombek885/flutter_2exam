import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/men.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/images/men.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: IconButton(
                        icon: const Icon(
                          Icons.edit,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildInfoCard("Personal Info", [
              buildInfoRow("Your name", "Islombek Iskanadrov"),
              buildInfoRow("Occupation", "Student"),
              buildInfoRow("Address", "Buxoro, G'ijduvon"),
              buildSwitchRow("Member", true),
            ]),
            const SizedBox(height: 10),
            buildInfoCard("Contact Info", [
              buildInfoRow("Phone number", "+998 90 907-99-49"),
              buildInfoRow("Email", "Islombek_093@gmail.com"),
            ]),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoCard(String title, List<Widget> children) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, color: Colors.grey)),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildSwitchRow(String title, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16, color: Colors.grey)),
          Switch(
            value: value,
            onChanged: (newValue) {},
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
