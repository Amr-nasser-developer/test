import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/team_member/widget/bottom_sheet_widget.dart';

class TeamMemberButtonsWidget extends StatelessWidget {
  const TeamMemberButtonsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.1),
            blurRadius: 11,
            offset: Offset(0, -4),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.blueColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg/join.svg'),
                  SizedBox(width: 10,),
                  Text(
                    "Join team".toUpperCase(),
                    style: TextStyles.fontMedium12PxWhite,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  isScrollControlled: true,
                  builder: (context) => LeaveTeamBottomSheet(),
                );
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffFF6B6B),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg/leave.svg'),
                    SizedBox(width: 10,),
                    Text(
                      "leave team".toUpperCase(),
                      style: TextStyles.fontMedium12PxWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
