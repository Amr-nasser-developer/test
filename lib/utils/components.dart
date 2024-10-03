import 'package:flutter/material.dart';


navigateTo({context, screen}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}

finishNavigate({context, screen}) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen), (route) => false);
}

