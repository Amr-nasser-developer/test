import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test_app/view/team_member/widget/team_member_appbar_widget.dart';
import 'package:test_app/view/team_member/widget/team_member_buttons_widget.dart';
import 'package:test_app/view/team_member/widget/team_member_listview_screen.dart';

class TeamMembersScreen extends StatefulWidget {
  @override
  State<TeamMembersScreen> createState() => _TeamMembersScreenState();
}

class _TeamMembersScreenState extends State<TeamMembersScreen> {
  bool _isShimmer = false;
  @override
  void initState() {
    super.initState();
    _startLoading();
  }
  void _startLoading() {
    setState(() {
      _isShimmer = true;
    });
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _isShimmer = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Skeletonizer(
        enabled: _isShimmer,
        child: const Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                TeamMemberWidget(),
                TeamMemberListviewScreen(),
                SizedBox(height: 125,)
              ],
            ),
            TeamMemberButtonsWidget()
          ],
        ),
      ),
    );
  }
}
