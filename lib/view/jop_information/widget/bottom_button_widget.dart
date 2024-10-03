import 'package:flutter/material.dart';
import 'package:test_app/utils/const.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height : 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE4ECFF)
                  ),
                  child: Icon(Icons.bookmark_border_rounded, color: Color(0xff1D58F2),),
                ),
                Container(
                  height : 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE4ECFF)
                  ),
                  child: Icon(Icons.share, color: Color(0xff1D58F2),),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: MediaQuery.sizeOf(context).width * 0.6,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('Apply Job',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Bai Jamjuree',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
    );
  }
}
