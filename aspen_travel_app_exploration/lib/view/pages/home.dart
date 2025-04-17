import 'package:flutter/material.dart';
import 'package:aspen_travel_app_exploration/view/widget/bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Text("home page"),
        ],
      ),
      bottomNavigationBar: BottomBar(), 
    );
  }
}
