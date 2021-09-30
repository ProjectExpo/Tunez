import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:tunez/Create.dart';
// import 'package:tunez/Example.dart';
// import 'package:tunez/Forget.dart';
// import 'package:tunez/First.dart';




class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
        Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: Text('Favorite Songs',
          style: GoogleFonts.lobster(
              fontSize: 40,
              color: Colors.white
          ),),
        ),
         Expanded(

           child: Center(
             child: ListView(
               padding: const EdgeInsets.all(8),
               children: <Widget>[
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
                           SizedBox(
                             child: Text('Treat You Better',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('Shawn Mendes',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 90),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)

                     ],
                   ),
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
                       Image(image: AssetImage('images/havana.png'),width: 57,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             child: Text('Havana',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('Camila Cabello',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 133),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)
                     ],
                   ),
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
                       Image(image: AssetImage('images/ts.png'),width: 57,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             child: Text('You Need to calm',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('Taylor Swift',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 75),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)

                     ],
                   ),
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
                       Image(image: AssetImage('images/weeknd.png'),width: 57,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             child: Text('Starboy',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('The Weeknd',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 150),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)

                     ],
                   ),
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
                       Image(image: AssetImage('images/id.png'),width: 57,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             child: Text('Demons',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('Imagine Dragons',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 115),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)

                     ],
                   ),
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
                       Image(image: AssetImage('images/stay.png'),width: 57,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             child: Text('Stay',
                               style:  GoogleFonts.roboto(
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                   fontSize: 21
                               ),),
                           ),
                           Text('Justin Bieber, The Kid Laroi',
                             style:  GoogleFonts.roboto(
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                                 fontSize: 16
                             ),
                           ),
                         ],
                       ),
                       SizedBox(width: 45),
                       Icon(Icons.favorite, color: Colors.white,size: 40,)

                     ],
                   ),
                 ),



               ],
             ),
           ),
         ),
      ],
    );
  }
}