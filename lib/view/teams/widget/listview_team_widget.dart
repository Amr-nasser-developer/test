import 'package:flutter/material.dart';
import 'package:test_app/utils/components.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';
import 'package:test_app/view/team_member/team_member_screen.dart';

class ListviewTeamWidget extends StatelessWidget {
  const ListviewTeamWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      itemCount: 20,
      shrinkWrap: true,
      reverse: false,
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context, index)=> SizedBox(height: 5,),
      itemBuilder: (context, index)=> defaultTeamContainer(
        imageUrl: 'assets/image/profile.jpg',
        name: 'AL-NASR GROUP',
        context: context
      ),
    );
  }
  Widget defaultTeamContainer({imageUrl, name, context})=> GestureDetector(
    onTap: (){
      navigateTo(
        context: context,
        screen: TeamMembersScreen()
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                '$name'.toUpperCase(),
                style: TextStyles.fontMedium15PxDarkGrey,
              ),
            ),
            Container(
              height: 25,
              width: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text("MORE" , style: TextStyles.fontMedium8PxWhite,),
            )
          ],
        ),
      ),
    ),
  );
}
