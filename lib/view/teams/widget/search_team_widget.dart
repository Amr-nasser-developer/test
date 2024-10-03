import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:test_app/utils/const.dart';

class SearchTeamWidget extends StatelessWidget {
  const SearchTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.05),
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:12),
                    prefixIcon: SvgPicture.asset('assets/svg/search.svg', fit: BoxFit.scaleDown,),
                    hintText: "Search",
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primaryColor
            ),
            child:  SvgPicture.asset('assets/svg/lock.svg', fit: BoxFit.scaleDown,),
          ),
        ],
      ),
    );
  }
}
