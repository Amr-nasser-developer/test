import 'package:flutter/material.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';

class TeamMemberListviewScreen extends StatelessWidget {
  const TeamMemberListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Your Team'.toUpperCase(),
              style: TextStyles.fontMedium15PxPink,
            ),
          ),
          buildTeamMemberTile('MOHAMED KHALED', '+20 1299857520'),
          buildTeamMemberTile('AHMED ALI', '+20 1299857520'),
          buildTeamMemberTile('KHALED ABDULLAH', '+20 1299857520'),
          buildTeamMemberTile('ALI MOHAMMED', '+20 1299857520'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Members who would like to join your team'.toUpperCase(),
              style: TextStyles.fontMedium15PxPink,
            ),
          ),
          buildRequestTile('MAHMOUD IBRAHIM', '+20 1299857520'),
          buildRequestTile('ABDULLAH IBRAHIM', '+20 1299857520'),
        ],
      ),
    );
  }
  Widget buildTeamMemberTile(String name, String phoneNumber) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage('assets/image/profile.jpg'),
        ),
        title: Text(
          name,
          style: TextStyles.fontMedium13PxDarkGrey,
        ),
        subtitle: Text(
          phoneNumber,
          style: TextStyles.fontMedium12PxDarkGrey,
        ),
        trailing: Container(
          height: 25,
          width: 55,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffFF6B6B),
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            "Remove".toUpperCase(),
            style: TextStyles.fontMedium8PxWhite,
          ),
        ));
  }
  Widget buildRequestTile(String name, String phoneNumber) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/image/profile.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyles.fontMedium13PxDarkGrey,
              ),
              Text(
                phoneNumber,
                style: TextStyles.fontMedium12PxDarkGrey,
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                height: 25,
                width: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xffFF6B6B),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Remove".toUpperCase(),
                  style: TextStyles.fontMedium8PxWhite,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColor.blueColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "add".toUpperCase(),
                  style: TextStyles.fontMedium8PxWhite,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
