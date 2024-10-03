import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/font_weight_helper.dart';
import 'package:test_app/utils/styles.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        defaultInformation(
            title: 'Education Level',
            details: 'Masters degree'
        ),
        SizedBox(height: 10),
        defaultInformation(
            title: 'gander',
            details: 'male'
        ),
        SizedBox(height: 10),
        defaultInformation(
            title: 'Education Level',
            details: 'Masters degree'
        ),
        SizedBox(height: 10),
        defaultInformation(
            title: 'type of experience',
            details: 'senior level'
        ),
        SizedBox(height: 10),
        defaultInformation(
            title: 'Apply Before',
            details: '30 July, 2024'
        ),
        SizedBox(height: 20),
        Text(
          'We are looking for an outstanding Surgical Nurse to join our medical team. '
              'We are looking for someone with experience and high competence who works collaboratively '
              'with surgeons and the rest of the medical team to ensure the successful conduct of operations and the safety of patients.',
          style: TextStyles.fontRegular12PxBrown,
        ),
      ],
    );
  }
  Widget defaultInformation({title, details})=> Column(
    children: [
      Container(
        height: 20,
        child: Row(
          children: [
            SvgPicture.asset('assets/svg/check.svg'),
            SizedBox(width: 10),
            Text('$title'.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Bai Jamjuree',
                fontWeight: FontWeightHelper.regular,
                color: Color(0xff4F4F4F),
              ),
            ),
            Spacer(),
            Text('$details'.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Bai Jamjuree',
                fontWeight: FontWeightHelper.semiBold,
                color: AppColor.blueColor,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 5,),
      Divider(
        height: 1,
        color: Color(0xff000000).withOpacity(0.1),
      )
    ],
  );
}
