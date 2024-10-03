import 'package:flutter/material.dart';
import 'package:test_app/utils/const.dart';
import 'package:test_app/utils/styles.dart';

class AppbarRateWidget extends StatelessWidget {
  const AppbarRateWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            height: MediaQuery.sizeOf(context).height * 0.37,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Image.asset('assets/image/background.png', fit: BoxFit.fill,)
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
                  Container(
                    child: Text(
                      'RATED TEAM',
                      style: TextStyles.fontBold16PxWhite,
                    ),
                  ),
                  Container(width: 50,),
                ],
              ),
              Container(
                height: MediaQuery.sizeOf(context).height *0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTeamRatingCircle(
                        'ONE PRINTS',
                        '14005',
                        'https://example.com/image1.jpg',
                        isHighlighted: false,
                        rateImage: 'assets/image/second.png'
                    ),
                    _buildTeamRatingCircle(
                        'AL-HAMAD',
                        '15500',
                        'https://example.com/image2.jpg',
                        isHighlighted: true,
                        rateImage: 'assets/image/first.png'
                    ),
                    _buildTeamRatingCircle(
                        'AL-AFDAL',
                        '13000',
                        'https://example.com/image3.jpg',
                        rateImage: 'assets/image/third.png'
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildTeamRatingCircle(String teamName, String score, String imageUrl, {bool isHighlighted = false, rateImage} ) {
    return Padding(
      padding: EdgeInsets.only(top: isHighlighted ? 0 : 50),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: isHighlighted ? 120 : 90,
                width: isHighlighted ? 90 : 60,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: isHighlighted ? 90 : 60,
                  width: isHighlighted ? 90 : 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    gradient: LinearGradient(
                      colors: [AppColor.primaryColor, Color(0xff224982),],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset('assets/image/leader1.jpg', fit: BoxFit.fill,)),
                ),
              ),
              Image.asset(rateImage, width: isHighlighted? 47 :33, height: isHighlighted? 43: 31,)
            ],
          ),
          SizedBox(height: 5),
          Text(
            score,
            style: TextStyles.fontSemiBold16PxWhite,
          ),
          Text(
            teamName,
            style: TextStyles.fontMedium12PxWhite,
          ),
        ],
      ),
    );
  }
}
