import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App Home Page",
          style: GoogleFonts.amiko(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          profileinternet(),
          myname(),
          birthday(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Divider(
                    color: Colors.blue,
                    thickness: 3,
                    height: 18,
                  ),
                ),
              ),
              Text('About Me'),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Divider(
                    color: Colors.blue,
                    thickness: 3,
                    height: 18,
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }

  Widget profileinternet() {
    return CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(
          'https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.6435-9/208848911_2921433734767443_7039483481358564599_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHIYPH_fAnVQuyaNg7sfjNUxtvNFtze6XrG280W3N7pei1k5gfgGyiHR2F2M3b0p-Waipte3U0e8utq7C2cRoXl&_nc_ohc=9uryPCt2lPAAX8whwVq&_nc_ht=scontent.fbkk5-7.fna&oh=00_AT8x5dXA4JKR9XxANjqoPRaL2nGQIJqyOCqIBg2tY7z78Q&oe=61E7AF04'),
    );
  }

  Image profilepic() {
    return Image.asset(
      'images/dogimage.jpg',
      fit: BoxFit.cover,
    );
  }

  Widget birthday() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cake),
        Text(
          " 19/02/44",
          style: GoogleFonts.amiko(
            color: Colors.blue,
            fontSize: 20,
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
          "My name is พัฒน์ธนดล",
          style: GoogleFonts.amiko(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
