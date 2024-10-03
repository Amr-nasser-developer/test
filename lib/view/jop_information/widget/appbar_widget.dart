import 'package:flutter/cupertino.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/font_weight_helper.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/image/jop_logo.png',
          height: 70,
          width: 70,
        ),
        SizedBox(height: 10),
        Text(
          'GENERAL PRACTITIONER',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Bai Jamjuree',
            fontWeight: FontWeightHelper.semiBold,
            color: AppColor.blueColor,
          ),
        ),
        Text(
          '#HOSPITAL - K123456789-25',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Bai Jamjuree',
            fontWeight: FontWeightHelper.regular,
            color: Color(0xff4F4F4F),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              defaultToolsIcon(
                  title: 'Mecca, Sudia Arabic',
                  icon: 'assets/svg/location.svg'
              ),
              SizedBox(width: 10),
              Container(height: 24, width: 1, color: Color(0xff000000),),
              SizedBox(width: 10),
              defaultToolsIcon(
                  title: 'Surgical Doctor',
                  icon: 'assets/svg/jop.svg'
              ),
              SizedBox(width: 10),
              Container(height: 24, width: 1, color: Color(0xff000000),),
              SizedBox(width: 10),
              defaultToolsIcon(
                  title: '3500 SAR - 4000 SAR',
                  icon: 'assets/svg/dollar.svg'
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget defaultToolsIcon({icon, title}) => Column(
    children: [
      SvgPicture.asset(icon),
      SizedBox(height: 10,),
      Text('$title',
        style: TextStyle(
          fontSize: 8,
          fontFamily: 'Bai Jamjuree',
          fontWeight: FontWeightHelper.medium,
          color: Color(0xff4F4F4F),
        ),),
    ],
  );
}
