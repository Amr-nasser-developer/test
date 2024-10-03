import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class ListviewHomeWidget extends StatelessWidget {
  List data = [
    {
      "date" : "10/04/2022",
      "title" : "Ramadan Kareem to you all and every year and you",
      "image" : "assets/image/ramadan.jpg"
    },
    {
      "date" : "13/04/2022",
      "title" : "Ramadan Kareem",
      "image" : "assets/image/ramadan.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          shrinkWrap: true,
          reverse: false,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index)=> _buildListviewItem(
            title: data[index]['title'],
            date: data[index]['date'],
            image: data[index]['image'],
          ),
          separatorBuilder: (context, index)=> SizedBox(height: 10,),
          itemCount: data.length
      ),
    );
  }
  Widget _buildListviewItem({image, date, title}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$date', style: TextStyles.fontRegular12PxGrey),
                SizedBox(height: 5,),
                Text('$title'.toUpperCase(), style: TextStyles.fontSemiBold12PxBlue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
