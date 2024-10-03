import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/components.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/jop_information/jop_information_screen.dart';
import 'package:test_app/view/rate/rate_screen.dart';

class CategoriesHomeWidget extends StatelessWidget {
  const CategoriesHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildGridItem('My Groups','Customize notifications' ,'assets/svg/my-group.svg', Color(0xff0D3B6F), (){}),
          _buildGridItem('Team List','Customize notifications' ,'assets/svg/team-list.svg', AppColor.primaryColor, (){
            navigateTo(context: context, screen: LeaderboardScreen());
          }),
          _buildGridItem('My Points','Customize notifications' ,'assets/svg/my-points.svg', Color(0xffEFDF00), (){}),
          _buildGridItem('Competition','Customize notifications' ,'assets/svg/competition.svg', Color(0xff4A4A4A), (){
            navigateTo(context: context, screen: JobScreen());
          }),
        ],
      ),
    );
  }
  Widget _buildGridItem(String title1,String title2, icon, Color color, onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title1.toUpperCase(), style: TextStyles.fontBold16PxBlue),
                  SizedBox(height: 10,),
                  Text(title2.toUpperCase(), style: TextStyles.fontRegular10PxDarkGrey),
                ],
              ),
            ),
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color
            ),
            child: SvgPicture.asset(icon, fit: BoxFit.scaleDown,),
          )
        ],
      ),
    );
  }
}
