import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/home/widget/appbar_home_widget.dart';
import 'package:test_app/view/home/widget/categories_home_widget.dart';
import 'package:test_app/view/home/widget/listview_home_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 bool _isShimmer = false;
 @override
 void initState() {
   super.initState();
   _startLoading();
 }
 @override
 void dispose() {
   super.dispose();
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
      backgroundColor: Colors.white,
      body: Skeletonizer(
        enabled: _isShimmer,
        enableSwitchAnimation: true,
        child: Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: CustomScrollView(
            key: const Key('scrollView'),
            slivers: [
              SliverAppBar(
                pinned: true,
                surfaceTintColor: Colors.white,
                backgroundColor: Colors.white,
                toolbarHeight: 0.0,
                expandedHeight: 290.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: FadeIn(
                    duration: const Duration(milliseconds: 500),
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff0D3B6F).withOpacity(0.5),
                            Colors.black,
                            Colors.black,
                            Colors.transparent,
                          ],
                          stops: [0.0, 0.5, 1.0, 1.0],
                        ).createShader(
                          Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
                        );
                      },
                      blendMode: BlendMode.dstIn,
                      child:const AppbarHomeWidget(),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: FadeInUp(
                  from: 20,
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CategoriesHomeWidget(),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                sliver: SliverToBoxAdapter(
                  child: FadeInUp(
                    from: 20,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Container(height: 2, color: Color(0xffE0E0E0),)),
                            SizedBox(width: 5,),
                            Text(
                              'Lasted notifications'.toUpperCase(),
                              style: TextStyles.fontSemiBold12PxPink,
                            ),
                            SizedBox(width: 5,),
                            Expanded(child: Container(height: 2, color: Color(0xffE0E0E0),)),
                          ],
                        ),
                        ListviewHomeWidget()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
