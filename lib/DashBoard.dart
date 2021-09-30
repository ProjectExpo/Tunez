import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {


  List playlists =[
    'images/playlistUI1.jpg',
    'images/PlaylistUI3.png',
    'images/Starboy.png'
  ];
  List playlistNames = [
    ['Force','Divide & Collide'],
    ['Thank U,Next', 'Ariana'],
    ['Starboy','The Weekend']
  ];

  List moods = [
    ['Happy','images/happy.png'],
    ['Sad','images/sad.jpg'],
    ['Neutral','images/neutral.jpg']
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.signal_cellular_alt),
                  color: Colors.white,
                  iconSize: 32,
                ),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Playlists',
                      style: GoogleFonts.roboto(
                        color: Colors.white.withOpacity(0.76),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 32,
                ),
              ],
            ),
            Container(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                height: 400,
                child: Swiper(
                  itemCount: playlists.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      child: Column(
                        children: [
                          Text('Playlist ${index+1}',
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: Colors.white,

                            ),
                          ),
                          SizedBox(height: 50,),
                          Container(

                              child: Stack(
                                children: [
                                  ClipRRect(
                                      child: Image.asset(playlists[index],fit: BoxFit.fill,),
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin: EdgeInsets.only(top: 145,left: 5,right: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4).withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(22)
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(playlistNames[index][0], style: GoogleFonts.lato(
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),),
                                            Text(playlistNames[index][1], style: GoogleFonts.lato(
                                              fontSize: 12,
                                              color: Color(0xffE0E0E0)
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ],
                      ),
                    );
                  },
                  viewportFraction: 0.5,
                  scale: 0.4,

                ),
              ),
            ),
            Text('Browse Moods',style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20
            ),),
            SizedBox(height: 20,),
            Container(
              height: 130,
              child: Swiper(
                itemCount:moods.length,
                itemBuilder: (BuildContext context, int index){
                  return Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(moods[index][1],fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      Container(
                        margin:EdgeInsets.only(top: 100),
                        padding:EdgeInsets.symmetric(horizontal: 45) ,
                        child: Text(moods[index][0],style: GoogleFonts.lato(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  );
                },
                scale: 0.6,
                viewportFraction: 0.4,
              )
            ),
          ],
        ),
      ),
    );
  }
}
