import 'package:anime_ui/Src/Widgets/Available.dart';
import 'package:anime_ui/Src/Widgets/Header.dart';
import 'package:anime_ui/Src/Widgets/Recents.dart';
import 'package:anime_ui/Src/Widgets/Trends.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        Header(),
        Trends(),
        Recents(),
        Available(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: kBottomNavigationBarHeight * 1.4,
          ),
        )
      ],
    );
  }
}
