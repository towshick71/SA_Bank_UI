// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:bank_app_dribble/color_constant.dart';
import 'package:bank_app_dribble/models/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';
import 'models/transaction_model.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title:Text("Second Screen") ,
      ),*/
      body: Container(
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
                            "Search Here                                                       ",
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

              SizedBox(
                height: 30,
              ),

              // Rider Credentials
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: transactions.length,
                padding: EdgeInsets.only(left: 16, right: 16),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 13),
                    padding: EdgeInsets.only(left: 10, right: 22),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: kTenBlackColor,
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(8.0, 8.0),
                          )
                        ]),
                    child: Stack(children: [
                      // Tesla Model
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/image/tesla.png',
                                height: 100,
                                width: 190,
                              )
                            ],
                          ),
                        ],
                      ),
                      //Ayman Rating
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Image.asset(
                                  'assets/image/Ayman_rating-BGR.png',
                                  height: 70,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // First Column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tesla Model - X",
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kBlueColor,
                                ),
                              ),
                              Text(
                                "Electric Car",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kGreyColor,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "4 seats",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: kBlueColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  );
                },
              ),
              // Rider Credentials Ends

              // Book Now Starts
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(bottom: 13),
                  padding: EdgeInsets.only(left: 10, right: 22),
                  decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
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
                            children: [
                              Text(
                                "Total",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: kWhiteColor,
                                ),
                              ),
                              Text(
                                "\$20",
                                style: GoogleFonts.inter(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                  color: kWhiteColor,
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: .5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Book Now",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kWhiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 50,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ThirdScreen();
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
            ],
          ),
        ),
      ),
    );
  }
}
