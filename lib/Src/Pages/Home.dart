import 'package:anime_ui/Src/Widgets/Body.dart';
import 'package:anime_ui/Src/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Body(),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
