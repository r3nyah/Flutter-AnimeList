import 'package:flutter/material.dart';

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  SliverCustomHeaderDelegate({
    required this.maxHeight,
    required this.child,
    required this.minHeight,
});

  @override
  Widget build(BuildContext context,double shrinkOffset ,bool overlapsContent){
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent{
    return maxHeight;
  }

  @override
  double get minExtent{
    return minHeight;
  }

  @override
  bool shouldRebuild(SliverCustomHeaderDelegate oldDelegate){
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
}