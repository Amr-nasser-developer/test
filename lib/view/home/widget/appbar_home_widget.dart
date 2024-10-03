import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/styles.dart';

class AppbarHomeWidget extends StatefulWidget {
  const AppbarHomeWidget({super.key});

  @override
  State<AppbarHomeWidget> createState() => _AppbarHomeWidgetState();
}

class _AppbarHomeWidgetState extends State<AppbarHomeWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isLoading = false;
  bool gif = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<double>(begin: -200, end: 500).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
        gif = true;
        stopCoinGif();
      });
    });
  }

  stopCoinGif() {
    return Timer(const Duration(seconds: 5), () {
      setState(() {
        gif = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (gif == true) {
      Fluttertoast.showToast(
          msg: "${"add_successfully".toString()}",
          timeInSecForIosWeb: 3,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green.shade400);
    }
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          color: Colors.white,
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.37,
                width: double.infinity,
                child: Image.asset(
                  'assets/image/home_background.png',
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              'assets/image/profile.jpg'), // Profile image
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ahmed Mohamed',
                              style: TextStyles.fontMedium16PxWhite,
                            ),
                            Text(
                              'MAS Group',
                              style: TextStyles.fontMedium10PxWhite,
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/svg/notification.svg')
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'MY POINTS EARNED',
                          style: TextStyles.fontMedium16PxWhite,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          'assets/svg/question.svg',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/image/point.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '54,271',
                          style: TextStyles.fontSemiBold32PxWhite,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'POINTS',
                          style: TextStyles.fontMedium16PxWhite,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: MediaQuery.sizeOf(context).width * 0.7 , height: 55,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Text(
                '1294-1256-5523-5520',
                style: TextStyles.fontMedium15PxDarkGrey,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _startLoading();
                },
                child: (_isLoading == false)
                    ? Column(
                        children: [
                          Image.asset(
                            'assets/image/point.png',
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            'Send Now',
                            style: TextStyles.fontMedium9PxPink,
                          )
                        ],
                      )
                    : Container(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator()),
              )
            ],
          ),
        ),
        if (gif == true)
          Image.asset(
            'assets/image/coin.gif',
            width: double.infinity,
            fit: BoxFit.fill,
          )
      ],
    );
  }
}
