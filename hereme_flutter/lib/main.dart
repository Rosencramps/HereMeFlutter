import 'package:flutter/material.dart';
import 'package:hereme_flutter/registration/photo_add.dart';
import 'package:hereme_flutter/registration/log_in.dart';
import 'package:hereme_flutter/user_profile//profile_page/user_profile_page.dart';
import 'package:hereme_flutter/registration/initial_page.dart';
import 'nav_controller_state.dart';

void main() {
  //todo move _isUserLoggedIn() here
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
//        home: NavControllerState(),
    ),
  );
}
