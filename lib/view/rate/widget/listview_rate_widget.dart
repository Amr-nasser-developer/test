import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class ListviewRateWidget extends StatelessWidget {
  const ListviewRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          shrinkWrap: true,
          reverse: false,
          itemCount: 30,
          itemBuilder: (context, index) {
            return _buildTeamListItem(index + 4, 'Team ${index + 4}', (14000 - index * 500).toString());
          },
        ),
      ),
    );
  }
  Widget _buildTeamListItem(int rank, String teamName, String score) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
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
          Text(rank.toString(), style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14 ),),
        SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.pink,
            backgroundImage: AssetImage('assets/image/leader1.jpg'),
          ),
          SizedBox(width: 10,),
          Text(teamName, style: TextStyles.fontMedium15PxDarkGrey,),
          Spacer(),
    Text(
        score,
        style: TextStyles.fontMedium15PxPink,
      ),
        ],
      )
    );
  }
}
