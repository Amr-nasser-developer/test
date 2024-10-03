import 'dart:async';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_app/view/jop_information/widget/appbar_widget.dart';
import 'package:test_app/view/jop_information/widget/toolbar_widget.dart';
import 'widget/bottom_button_widget.dart';

class JobScreen extends StatefulWidget {

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
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
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Icon(Icons.arrow_back, color: Colors.black)),
            ),
            body: const SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Padding(
                padding:  EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      AppbarWidget(),
                      SizedBox(height: 20),
                      ToolbarWidget(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const BottomButtonWidget()
        ],
      ),
    );
  }

}
