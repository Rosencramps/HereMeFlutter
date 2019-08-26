import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kColorPurple = Color.fromRGBO(111, 89, 194, 1.0);
const kColorBlue = Color.fromRGBO(71, 106, 188, 1.0);
const kColorGreen = Color.fromRGBO(71, 188, 153, 1.0);
const kColorBlack105 = Color.fromRGBO(105, 105, 105, 1.0);
const kColorOffWhite = Color.fromRGBO(245, 245, 245, 1.0);
const kColorOffBlack = Color.fromRGBO(50, 50, 50, 1.0);
const kColorLightGray = Color.fromRGBO(188, 188, 188, 1.0);
const kColorRed = Color.fromRGBO(188, 71, 89, 1.0);
// SOCIAL MEDIA COLORS
const kColorInstagramColor = Color.fromRGBO(131, 58, 180, 1.0);
const kColorSnapchatColor = Color.fromRGBO(255, 252, 0, 1.0);
const kColorTwitterColor = Color.fromRGBO(29, 161, 242, 1.0);
const kColorFacebookColor = Color.fromRGBO(59, 89, 152, 1.0);
const kColorYoutubeColor = Color.fromRGBO(255, 0, 0, 1.0);
const kColorSoundcloudColor = Color.fromRGBO(255, 136, 0, 1.0);
const kColorPinterestColor = Color.fromRGBO(189, 8, 28, 1.0);
const kColorSpotifyColor = Color.fromRGBO(30, 215, 96, 1.0);
const kColorVenmoColor = Color.fromRGBO(61, 149, 206, 1.0);
const kColorTumblrColor = Color.fromRGBO(53, 70, 92, 1.0);
const kColorRedditColor = Color.fromRGBO(255, 69, 0, 1.0);
const kColorLinkedInColor = Color.fromRGBO(0, 119, 181, 1.0);
const kColorTwitchColor = Color.fromRGBO(100, 65, 164, 1.0);

const kTextFieldStyle = TextStyle(
  color: kColorBlack105,
  fontFamily: 'Montserrat',
  fontSize: 16.0,
);

const kRegistrationInputDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kColorLightGray,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kColorPurple),
  ),
);

void kShowFlushBar(
    {text: String, icon: IconData, color: Color, context: BuildContext}) {
  Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.white,
    messageText: Text(
      text,
      style: kTextFieldStyle,
    ),
    icon: Icon(
      icon,
      size: 28.0,
      color: color,
    ),
    duration: Duration(seconds: 3),
    leftBarIndicatorColor: color,
  )..show(context);
}

const kTopProfileText = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 18.0,
  color: kColorBlack105,
);

const kAppBarTitleTextStyle = TextStyle(
  color: kColorBlack105,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w600,
);

void kShowAlert({context: BuildContext, title: String, desc: String, buttonText: String}) {
  Alert(
    context: context,
    style: AlertStyle(
      backgroundColor: kColorOffWhite,
      overlayColor: Colors.black.withOpacity(0.75),
      titleStyle: kTextFieldStyle.copyWith(
        color: kColorBlack105,
        fontSize: 24.0,
      ),
      descStyle: kTextFieldStyle.copyWith(
        color: kColorBlack105,
        fontSize: 16.0,
      ),
    ),
    type: null,
    title: title,
    desc: desc,
    buttons: [
      DialogButton(
        child: Text(
          buttonText,
          style: kTextFieldStyle.copyWith(
            color: Colors.white,
          ),
        ),
        onPressed: () => Navigator.pop(context),
        color: kColorRed,
        radius: BorderRadius.circular(5.0),
      ),
    ],
  ).show();
}

const kRegistrationPurpleTextStyle = TextStyle(
  color: kColorPurple,
  fontSize: 32.0,
  fontFamily: 'Berlin-Sans',
);