import 'package:flutter/material.dart';
import 'package:imtihon_flutter2/sign3page.dart';
import 'log3page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/logo1.png",
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 27),
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
            SizedBox(height: 131),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                minimumSize: Size(300, 50),
                backgroundColor: Color(0xFF009944),
                foregroundColor: Colors.white,
              ),
              child: const Text("Log In"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                minimumSize: Size(300, 50),
                backgroundColor: Color.fromARGB(255, 247, 247, 247),
                foregroundColor: Colors.white,
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Color.fromARGB(220, 17, 16, 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
