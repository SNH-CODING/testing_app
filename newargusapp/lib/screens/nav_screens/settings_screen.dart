import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("APP SETTINGS"),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Stack(
                children: const [
                  Text("App Language"),
                  Positioned(top: 10, child: Text("English"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
