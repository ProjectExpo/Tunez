import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunez/HomePage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(child: Image(image: AssetImage('images/profileBg.png'))),
              Positioned(
                left: 100, top: 300,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage:AssetImage('images/profile.png'),
                  )
              ),
            ],
          ),
          SizedBox(height: 65,),
          Text(
            'Sathish',
            style: GoogleFonts.oleoScript(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Text(
            'sathishkumar@gmail.com',
            style:  GoogleFonts.roboto(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 19
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text('Recently Played',
              style: GoogleFonts.roboto(
                fontSize: 19,
                color: Colors.white.withOpacity(0.57),

              ),),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xff653B69),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              children: [
                Image(image: AssetImage('images/profileMusic.png'),width: 57,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Treat You Better',
                      style:  GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 21
                      ),),
                    Text('Shawn Mendes',
                      style:  GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 100,),
                Icon(Icons.play_circle_fill, color: Colors.white,size: 40,)
              ],
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.add_to_home_screen_rounded,color: Colors.white.withOpacity(0.6),size: 39,),
                  Text('Sign Out',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.normal,
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 20
                  ),)
                ],
              ),
            ),
          ),
          SizedBox(height: 100,)

        ],
      ),
    );
  }
}
