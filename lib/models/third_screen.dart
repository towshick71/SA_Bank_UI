// ignore_for_file: prefer_const_constructors

import 'package:bank_app_dribble/models/transaction_model.dart';
import 'package:bank_app_dribble/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_constant.dart';
import '../fourth_screen.dart';
import '../home_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title:Text("Second Screen") ,
      ),*/
      body: Container(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/map.png'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 50, right: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 12,
                      ),

                      // Back Button
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: RaisedButton(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: kGreyColor,
                                ),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomeScreen();
                                  }));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Back Button ends

                      SizedBox(
                        width: 10,
                      ),

                      // Search Bar
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: .25,
                            blurRadius: 1,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ], color: Colors.white),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: kGreyColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                                "Third Page                                                       ",
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: kGreyColor,
                                )),
                          ],
                        ),
                      ),
                      // Search Bar Ends
                    ],
                  ),

                  // Route
                  Row(
                    children: [
                      Image.asset('assets/image/RoutePNG.png', height: 500)
                    ],
                  ),
                  //Route Ends

                  // Rider Credentials
                ],
              ),
            ),
          ),

          // You Have Arriveed
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: transactions.length,
              //padding: EdgeInsets.only(left: 16, right: 16),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 500,
                  margin: EdgeInsets.only(bottom: 13),
                  padding: EdgeInsets.only(left: 10, right: 22),
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: kTenBlackColor,
                          blurRadius: 1000,
                          spreadRadius: 10,
                          offset: Offset(8.0, 8.0),
                          //blurStyle: BlurStyle.normal
                        )
                      ]),
                  child: Stack(children: [
                    // ----------------Drag + Cross--------------
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 170, top: 15),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('assets/svg/Drag_Line.svg'),
                            Padding(
                              padding: EdgeInsets.only(left: 80.0),
                              child: SizedBox(
                                height: 25,
                                width: 50,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return SecondScreen();
                                    }));
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: kBlueColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // --------------Drag + Cross Ends---------------

                    // --------------You have Arrived---------------
                    Padding(
                      padding: EdgeInsets.only(bottom: 370.0),
                      child: Center(
                        child: Text(
                          "You Have Arrived",
                          style: GoogleFonts.inter(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              color: kBlueColor),
                        ),
                      ),
                    ),
                    // ------------You have Arrived Ends------------//

                    // Divider
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 100, right: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    //----------Ride Duration-----------//
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 125, right: 20),
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/image/Ayman_Sadiq.png')
                              ],
                            ),

                            SizedBox(
                              width: 15,
                            ),

                            // First Column
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AYMAN SADIQ",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: kBlueColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.8",
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: kGreyColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 15,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Final Cost",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "BDT ৳139",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: kBlueColor),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 15,
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Time",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: kGreyColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "32.00",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: kBlueColor),
                                ),
                              ],
                            ),
                            // ------------Ride Duration Ends------------//
                          ],
                        ),
                      ),
                    ),

                    // 2nd Divider
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 180, right: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    //-----------Trip Locations-----------//
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 200, right: 20),
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TRIP",
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: kBlueColor),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: kBlueColor,
                                        ),
                                        Text(
                                          "ULAB Campus A",
                                          style: GoogleFonts.inter(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: kBlueColor),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 157,
                                    ),
                                    Text(
                                      "9:40 PM",
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: kBlueColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: kRedColor,
                                    ),
                                    Text(
                                      "Shimanto Square",
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: kBlueColor),
                                    ),
                                    SizedBox(
                                      width: 148,
                                    ),
                                    Text(
                                      "10:10 PM",
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: kBlueColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------Trip Location Ends----------//

                    // 3nrd Divider
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 295, right: 20),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),


                    //---------How Was Trip----------//
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 315, right: 20),
                      child: Container(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "HOW WAS YOUR TRIP?",
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: kBlueColor),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Your feedback will help us improve driving",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: kBlueColor),
                              ),
                              Text(
                                "experience better",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: kBlueColor),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 30,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 30,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 30,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    size: 30,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    size: 30,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //-----------How Was trip Ends----------//





                    //----------------- Scan QR Here-----------//
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 421, right: 20),
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(bottom: 13),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: kBlueColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: kTenBlackColor,
                                blurRadius: 10,
                                spreadRadius: 5,
                                offset: Offset(8.0, 8.0),
                              )
                            ]),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Column(
                                  children: const [
                                    SizedBox(
                                      width: 50,
                                    )
                                  ],
                                ),

                                Column(
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Scan QR Code Here",
                                      style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: kWhiteColor,
                                      ),
                                    ),
                                  ],
                                ),

                                Column(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 50,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) {
                                                return Scan_QR();
                                              }));},
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    )
                  ]),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
