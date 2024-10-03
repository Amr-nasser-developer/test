import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/teams/widget/listview_team_widget.dart';
import 'package:test_app/view/teams/widget/search_team_widget.dart';

class TeamsScreen extends StatefulWidget {
  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  final _key1 = GlobalKey();
  final _key2 = GlobalKey();
  final _key3 = GlobalKey();
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
    return Skeletonizer(
      enabled: _isShimmer,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("TEAMS", style: TextStyles.fontBold16PxBlue),
          leading: IconButton(
            icon:const Icon(Icons.arrow_back, color: AppColor.blueColor,),
            onPressed: () {
            },
          ),
        ),
        body:  CustomScrollView(
          key: _key1,
          slivers: [
            SliverAppBar(
             key: _key2,
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.white,
              floating: true,
              snap: true,
              pinned: false,
              expandedHeight: 100.0,
              flexibleSpace:const FlexibleSpaceBar(
                background: SearchTeamWidget(),
              ),
            ),
            SliverPadding(
              key: _key3,
              padding: const EdgeInsets.all(0),
              sliver: SliverToBoxAdapter(
                child: FadeInUp(
                  from: 20,
                  duration: const Duration(milliseconds: 500),
                  child: ListviewTeamWidget()
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: AppColor.primaryColor,
            onPressed: () {
            },
            child:const Icon(Icons.add, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}

