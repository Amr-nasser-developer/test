import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class BottomRateWidget extends StatelessWidget {
  const BottomRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            height: 117,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                child: Image.asset('assets/image/background.png', fit: BoxFit.fill,))
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('30', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14 ),),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.pink,
                backgroundImage: AssetImage('assets/image/leader1.jpg'),
              ),
              SizedBox(width: 10,),
              Text('AL-NASR GROUP', style: TextStyles.fontMedium15PxDarkGrey.copyWith(color: Colors.white),),
              Spacer(),
              Text(
                '7000',
                style: TextStyles.fontMedium15PxPink.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
