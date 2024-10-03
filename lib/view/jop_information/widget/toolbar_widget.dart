import 'package:flutter/material.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/font_weight_helper.dart';
import 'package:test_app/view/jop_information/widget/information_widget.dart';
import 'package:test_app/view/jop_information/widget/jop_requirment_widget.dart';

class ToolbarWidget extends StatefulWidget {
  const ToolbarWidget({super.key});

  @override
  State<ToolbarWidget> createState() => _ToolbarWidgetState();
}

class _ToolbarWidgetState extends State<ToolbarWidget> {
  bool jopInfo = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.blueColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              defaultToolbar(
                  title: 'Job Information',
                  color: (jopInfo == true)? const Color(0xff3AC0E5) : Colors.transparent,
                  onTap: (){
                    setState(() {
                      jopInfo = !jopInfo;
                    });
                  }
              ),
              defaultToolbar(
                  title: 'Job requirements',
                  color: (jopInfo == true)? Colors.transparent: const Color(0xff3AC0E5),
                  onTap: (){
                    setState(() {
                      jopInfo = !jopInfo;
                    });
                  }
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        if(jopInfo == true) const InformationWidget(),
        if(jopInfo == false) JopRequirmentWidget(),
      ],
    );
  }
  Widget defaultToolbar({title, onTap, color})=>  GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Text('$title'.toUpperCase(),
        style: const TextStyle(
          fontSize: 10,
          fontFamily: 'Bai Jamjuree',
          fontWeight: FontWeightHelper.medium,
          color: Colors.white,
        ),
      ),
    ),
  );
}
