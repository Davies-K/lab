import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labstudios/Widgets/background_text.dart';
import 'package:labstudios/Widgets/image_logo_holder.dart';
import 'package:labstudios/constants/constants.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class MetHomeDesktop extends StatefulWidget {
  @override
  _MetHomeDesktopState createState() => _MetHomeDesktopState();
}

class _MetHomeDesktopState extends State<MetHomeDesktop> {
  final int selectedIndex = 0;
  List<Container> navdots = [];

  @override
  void initState() {
    navdots = List.generate(
        5,
        (index) => Container(
            margin: EdgeInsets.only(right: 30),
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    index == selectedIndex ? Colors.black : Colors.grey[300])));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.greyBackground,
        body: Stack(
          children: [
            //text in the middle
            Center(
              child: Container(
                  width: AppUtils.screenWidth / 2,
                  height: AppUtils.screenHeight,
                  //color: Colors.red,
                  child: Stack(children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: PixelatedBackgroundText(
                        text: '20',
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: PixelatedBackgroundText(
                          text: 'lab',
                        ))
                  ])),
            ),

            // appheader
            Positioned(
              top: 30,
              left: 40,
              child: Container(
                  width: AppUtils.screenWidth / 3,
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 6,
                              child: Row(children: [
                                Text('lab.',
                                    style: GoogleFonts.raleway(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('®'),
                                  ],
                                )
                              ])),
                          Expanded(
                              flex: 4,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Shop'),
                                    Text('Tour'),
                                    Text('Explore'),
                                  ]))
                        ]),
                    SizedBox(height: 20),
                    Divider(
                      height: 1,
                      color: Colors.black45,
                    )
                  ])),
            ),

            // Trademark
            Positioned(
                top: AppUtils.screenHeight / 4.5,
                left: 40,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LAB. WORKS™",
                          style: GoogleFonts.raleway(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      Text('CRAFTED CREATIONS - \u00a92020',
                          style: GoogleFonts.dmSans(fontSize: 24)),
                      SizedBox(height: 10),
                      Row(children: [
                        ImageLogoHolder("assets/soldier.png"),
                        SizedBox(width: 5),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text('Made ❤️ with Flutter By',
                        //         style: TextStyle(fontSize: 8)),
                        //     Text('Davies Kwarteng',
                        //         style: TextStyle(fontSize: 8)),
                        //   ],
                        // )
                      ]),
                      SizedBox(height: 100),
                      Container(
                          // width: 500,
                          height: 10,
                          child: Row(children: [...navdots]))
                    ])),

            //Video Position
            Positioned(
                bottom: 80,
                left: 40,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          width: 200,
                          height: 80,
                          child: Row(children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    color: Colors.black,
                                    child: Center(
                                        child: IconButton(
                                      icon: Icon(Icons.play_circle,
                                          size: 25, color: Colors.white),
                                      onPressed: () {},
                                    )))),
                            Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  child: Image(
                                    image: AssetImage("assets/hoddie.jpeg"),
                                    // width: MediaQuery.of(context).size.width * 0.80,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ))
                          ])),
                      SizedBox(height: 50),
                      Container(
                          width: 230,
                          child: Column(
                            children: [
                              Text(
                                  "FOR AUTHENTICATION OF LAB, UNVIEL SUMMER COLLECTION AND KEEP UNSEEN RIGHTS RESERVED.",
                                  style: TextStyle(
                                    letterSpacing: 1.4,
                                    fontSize: 9,
                                  ))
                            ],
                          ))
                    ])),

            //Positioned flag
            Positioned(
                top: 0,
                right: 180,
                child: Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    color: Colors.white,
                    child: Column(children: [
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                          flex: 2,
                          child: SizedBox(
                              child:
                                  Center(child: Icon(Icons.public, size: 30)))),
                    ]))),

            // Languages
            Positioned(
                top: 30,
                right: 70,
                child: Row(
                  children: [
                    Text('EN',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    SizedBox(width: 20),
                    Text('FR', style: GoogleFonts.lato(fontSize: 12)),
                  ],
                )),

            //crafted element text
            Positioned(
                bottom: 350,
                right: 140,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SURVIALIST',
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w600)),
                      SizedBox(height: 1),
                      Text('CRAFTED ELEMENTS',
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w600)),
                      SizedBox(height: 1),
                      Text('& VISUAL LANGUAGE',
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w600)),
                    ])),

            //over number
            Positioned(
                bottom: 90,
                right: 180,
                child: Column(children: [
                  RotatedBox(
                      quarterTurns: 1,
                      child: Text('20',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(height: 10),
                  Container(color: Colors.black87, width: 1, height: 60),
                  SizedBox(height: 10),
                  RotatedBox(
                      quarterTurns: 1,
                      child: Text('20',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ])),

            //LED
            Positioned(
                bottom: AppUtils.screenHeight / 1.8,
                right: AppUtils.screenWidth / 3.5,
                child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: HexColor.fromHex("02FF33")))),

            //Column next to positioned ledd
            Positioned(
                bottom: AppUtils.screenHeight / 1.926,
                right: AppUtils.screenWidth / 4.2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LAB', style: TextStyle(fontSize: 11)),
                      SizedBox(height: 2),
                      Text('SUMMER', style: TextStyle(fontSize: 11)),
                      SizedBox(height: 2),
                      Text('COLLECTION', style: TextStyle(fontSize: 11)),
                    ])),

            //Navigator
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    height: 80,
                    width: 60,
                    color: AppColors.white,
                    child: Center(
                        child: IconButton(
                      icon: Icon(Icons.arrow_downward),
                      onPressed: () {},
                    )))),

            //Image

            Center(
                child: Container(
                    height: 480,
                    child: ClipRRect(
                        child: Image(
                            image: AssetImage('assets/default_helmet.png'),
                            fit: BoxFit.contain)))),

            // Centered Image
            // ParallaxStack(
            //     resetOnExit: true,
            //     useLocalPosition: true,
            //     referencePosition: 0.3,
            //     dragCurve: Curves.easeIn,
            //     //xresetCurve: Curves.bounceOut,
            //     layers: [
            //       ParallaxLayer(
            //         yRotation: 0.35,
            //         xOffset: 60,
            //         child: Center(
            //             child: Container(
            //                 height: 500,
            //                 child: ClipRRect(
            //                     child: Image(
            //                         image: AssetImage('assets/frontface.png'),
            //                         fit: BoxFit.contain)))),
            //       ),
            //       ParallaxLayer(
            //         yRotation: 0.35,
            //         yOffset: 10,
            //         xOffset: 80,
            //         child: Center(
            //             child: Container(
            //                 height: 480,
            //                 child: ClipRRect(
            //                     child: Image(
            //                         image:
            //                             AssetImage('assets/default_helmet.png'),
            //                         fit: BoxFit.contain)))),
            //       ),
            //     ])

            Positioned(
                bottom: AppUtils.screenHeight / 3.5,
                right: AppUtils.screenWidth / 3.8,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: Container(
                          width: 320,
                          height: 150,
                          decoration: new BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(320, 150)),
                          ),
                          child:
                              Center(child: Column(children: [Row(), Row()]))),
                    ),
                  ),
                )),
          ],
        ));
  }
}
