import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/font_weight_helper.dart';
import 'package:test_app/utils/styles.dart';

class JopRequirmentWidget extends StatelessWidget {
  List texts= [
    {
    'text' : 'At least two years of experience in surgical nursing or working in the operating room.',
    },{
    'text' : 'Ability to work under pressure and deal with emergency situations effectively.',
    },{
    'text' : 'At least two years of experience in surgical nursing or working in the operating room.',
    },{
    'text' : 'Ability to work under pressure and deal with emergency situations effectively.',
    },{
    'text' : 'Accuracy and attention to detail to ensure patient safety.',
    },{
    'text' : 'Practical experience in sterilization and use of surgical instruments.',
    },{
    'text' : 'Practical experience in sterilizationrience in sterilizationrience in sterilization and use of surgical instruments.',
    },{
    'text' : 'Practical experience in sterilizationrience in sterilizationrience in sterilization and use of surgical instruments.',
    },{
    'text' : 'Practical experience in sterilizationrience in sterilizationrience in sterilization and use of surgical instruments.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        reverse: false,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index)=> defaultInformation(
            title: texts[index]['text'], context: context
        ),
        separatorBuilder: (context, index)=> SizedBox(height: 10,),
        itemCount: texts.length
    );
  }
  Widget defaultInformation({title, context})=> Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/svg/check.svg', width: 14, height: 14,),
        SizedBox(width: 10),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          child: Text('$title'.toUpperCase(),
            style: TextStyles.fontRegular12PxBrown,
          ),
        ),
      ],
    ),
  );
}
