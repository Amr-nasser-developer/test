import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class TeamMemberWidget extends StatelessWidget {
  const TeamMemberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height *0.3,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Image.asset('assets/image/background.png', fit: BoxFit.fill,)
        ),
        Container(
          padding: EdgeInsets.only(top: 60, right: 15, left: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  Text('Team Members'.toUpperCase(), style: TextStyles.fontBold16PxWhite,),
                  Icon(Icons.share, color: Colors.white,),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/image/profile.jpg'),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AL-NASR GROUP'.toUpperCase(),
                        style: TextStyles.fontSemiBold20PxWhite,
                      ),
                      SizedBox(height: 2),
                      Text(
                        'MOHAMED ALI'.toUpperCase(),
                        style: TextStyles.fontRegular14PxWhite,
                      ),
                      SizedBox(height: 2),
                      Text(
                        '7000 POINTS'.toUpperCase(),
                        style: TextStyles.fontMedium12PxWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
