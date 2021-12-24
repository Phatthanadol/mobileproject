import 'dart:html';
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY PROFILE",
          style: GoogleFonts.amiko(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          profilesection(),
          Padding(padding: EdgeInsets.symmetric(vertical: 55)),
          Text(
            "'Stackoverflow can help you.'",
            style: GoogleFonts.amiko(
              textStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          aboutmeborder(),
          myname(),
          birthday(),
          location(),
          contact(),
          email(),
          fblink(),
        ],
      )),
    );
  }

  Widget profilesection() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        profilebackground(),
        Positioned(top: 180, child: profileinternet()),
      ],
    );
  }

  Widget profilebackground() {
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: Image.network(
          'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.6435-9/166628155_2855133171397500_5027523467471291754_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=19026a&_nc_eui2=AeFaDqO3pQLk2MqFYRTU-FmsGDbLjXJhTBsYNsuNcmFMG67xHJtQbWgLtD-_l-Pd5Bi6RqWWJ6oRN5ys8-9ud6hU&_nc_ohc=2J2rnoOKkH0AX-6dICd&_nc_ht=scontent.fbkk5-6.fna&oh=00_AT_47F_szIerkS6xBCkvhLOgSbmDrnhh8SfoclzWpbDhEw&oe=61EA9761'),
      width: double.infinity,
      height: 280,
    );
  }

  Widget profileinternet() {
    return CircleAvatar(
      radius: 103,
      backgroundColor: Colors.white,
      child: profilepic(),
    );
  }

  Widget aboutmeborder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
        Container(
          child: Text(
            'ABOUT ME',
            style: GoogleFonts.amiko(
              textStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget fblink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.facebook),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  style: GoogleFonts.amiko(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  text: "Phatthanadol Phiungam",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = "https://www.facebook.com/film.phatthanadol/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Cannot Open this URL";
                      }
                    }),
            ],
          ),
        ),
      ],
    );
  }

  Widget profilepic() {
    return CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(
          'https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.6435-9/208848911_2921433734767443_7039483481358564599_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHIYPH_fAnVQuyaNg7sfjNUxtvNFtze6XrG280W3N7pei1k5gfgGyiHR2F2M3b0p-Waipte3U0e8utq7C2cRoXl&_nc_ohc=9uryPCt2lPAAX8whwVq&_nc_ht=scontent.fbkk5-7.fna&oh=00_AT8x5dXA4JKR9XxANjqoPRaL2nGQIJqyOCqIBg2tY7z78Q&oe=61E7AF04'),
    );
  }

  Widget birthday() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.cake),
        ),
        Text(
          " 19 Feb 2001",
          style: GoogleFonts.amiko(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Row myname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.person),
        ),
        Text(
          "พัฒน์ธนดล ผิวงาม",
          style: GoogleFonts.amiko(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Row location() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.location_pin),
        ),
        Text(
          "Nakhon si Thammarat, Thailand",
          style: GoogleFonts.amiko(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Row contact() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.phone),
        ),
        Text(
          "084 - 6533413",
          style: GoogleFonts.amiko(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Row email() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.email),
        ),
        Text(
          "phatthanadol@hotmail.com",
          style: GoogleFonts.amiko(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
