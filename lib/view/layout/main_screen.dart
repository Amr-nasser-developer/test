import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:svg_flutter/svg.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/view/home/home_screen.dart';
import 'package:test_app/view/jop_information/jop_information_screen.dart';
import 'package:test_app/view/teams/team_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool nav1 = true;
  bool nav2 = false;
  bool nav3 = false;
  bool nav4 = false;
  bool nav5 = false;
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
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
           if(nav1 == true) HomeScreen(),
           if(nav2 == true) HomeScreen(),
           if(nav3 == true) TeamsScreen(),
           if(nav4 == true) HomeScreen(),
           if(nav5 == true) HomeScreen(),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20 ,bottom: 30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 81,
                decoration: BoxDecoration(
                  color: Color(0xff0D3B6F),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildNavbarIcon(
                      ontap: (){
                        setState(() {
                          nav1 = true;
                          nav2 = false;
                          nav3 = false;
                          nav4 = false;
                          nav5 = false;
                        });
                      },
                        navColor: nav1,
                      nav: 'nav1'
                    ),
                    buildNavbarIcon(
                      ontap: (){
                        setState(() {
                          nav2 = true;
                          nav1 = false;
                          nav3 = false;
                          nav4 = false;
                          nav5 = false;
                        });
                      }, navColor: nav2, nav: 'nav2'
                    ),
                    buildNavbarIcon(
                      ontap: (){
                        setState(() {
                          nav3 = true;
                          nav1 = false;
                          nav2 = false;
                          nav4 = false;
                          nav5 = false;
                        });
                      }, nav: 'nav3', navColor: nav3
                    ),
                    buildNavbarIcon(
                      ontap: (){
                        setState(() {
                          nav4 = true;
                          nav1 = false;
                          nav2 = false;
                          nav3 = false;
                          nav5 = false;
                        });
                      }, nav: 'nav4', navColor: nav4
                    ),
                    buildNavbarIcon(
                      ontap: (){
                        setState(() {
                          nav5 = true;
                          nav1 = false;
                          nav2 = false;
                          nav3 = false;
                          nav4 = false;
                        });
                      }, nav: 'nav5', navColor: nav5
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
 Widget buildNavbarIcon({ontap, nav,navColor})=>GestureDetector(
   onTap: ontap,
   child: Container(
     padding: EdgeInsets.all(20),
     decoration: BoxDecoration(
         color: (navColor == true)?Colors.white: Colors.transparent,
         borderRadius: BorderRadius.circular(100)
     ),
     child: SvgPicture.asset('assets/svg/$nav.svg', color: (navColor == true)? AppColor.primaryColor:Colors.white,),
   ),
 );
}
