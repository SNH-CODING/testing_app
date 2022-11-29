import 'package:flutter/material.dart';
import 'package:newargusapp/screens/dashboard.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
      },
    ),
  );
}
