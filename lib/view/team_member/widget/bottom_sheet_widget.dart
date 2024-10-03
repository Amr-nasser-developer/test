import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';


class LeaveTeamBottomSheet extends StatefulWidget {
  @override
  _LeaveTeamBottomSheetState createState() => _LeaveTeamBottomSheetState();
}

class _LeaveTeamBottomSheetState extends State<LeaveTeamBottomSheet> {
  String? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svg/leave_team.svg'),
          SizedBox(height: 10),
          Text(
            "LEAVE TEAM",
            style: TextStyles.fontSemiBold24PxBink
          ),
          SizedBox(height: 10),
          Text(
            "Your order will be delivered soon.\nThank you for choosing our app!",
            textAlign: TextAlign.center,
            style: TextStyles.fontMedium14PxDarkGrey
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.pink, width: 1),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedUser,
                hint: Text('LIST OF TEAM USERS', style: TextStyles.fontRegular14PxDarkGrey,),
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_up, color: Colors.pink),
                items: <String>['User 1', 'User 2', 'User 3'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedUser = newValue;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.sizeOf(context).width * 0.6,
              decoration: BoxDecoration(
                color: AppColor.blueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('leave team'.toUpperCase(),
                style: TextStyles.fontMedium12PxWhite
              ),
            ),
          )
        ],
      ),
    );
  }
}
