import 'package:aspen_travel_app_exploration/view/widget/bottom.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Favourite Page"),),
      bottomNavigationBar: BottomBar(), 
    );
  }
}