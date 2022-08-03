import 'package:anime_ui/Src/Widgets/HeaderTrends.dart';
import 'package:anime_ui/Src/Widgets/ListTrends.dart';
import 'package:flutter/material.dart';

class Trends extends StatelessWidget{
  const Trends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: AspectRatio(
          aspectRatio: 16/12,
          child: Column(
            children: const[
              HeaderTrends(),
              ListTrends(),
            ],
          ),
        ),
      ),
    );
  }
}