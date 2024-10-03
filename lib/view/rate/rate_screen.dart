import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/rate/widget/appbar_rate_widget.dart';
import 'package:test_app/view/rate/widget/bottom_rate_widget.dart';
import 'package:test_app/view/rate/widget/listview_rate_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  bool _isShimmer = false;
  @override
  void initState() {
    super.initState();
    _startLoading();
  }
  void _startLoading() {
    setState(() {
      _isShimmer = true;
    });
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isShimmer = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Skeletonizer(
        enabled: _isShimmer,
        child: Column(
          children: [
           const AppbarRateWidget(),
            const ListviewRateWidget(),
            const BottomRateWidget()
          ],
        ),
      ),
    );
  }
}
