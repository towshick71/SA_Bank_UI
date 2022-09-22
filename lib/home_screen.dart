// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors


import 'package:badges/badges.dart';
import 'package:bank_app_dribble/models/transaction_model.dart';
import 'package:bank_app_dribble/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'OperationCard.dart';

import 'color_constant.dart';
import 'color_constant.dart';
import 'models/card_model.dart';
import 'color_constant.dart';
import 'models/operation_model.dart';
import  'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Current Selected
  int current = 0;

  // Handle Indicator
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[

            // Custom AppBar Logo + Notification Badge
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                // Logo + Notification Badge
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/bank.svg",
                        height: 18,
                        width: 18,
                        //color: Colors.grey[600],
                      ),
                      Column(children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset(
                          "assets/svg/Logo svg (1).svg",
                          height: 35,
                          //color: Colors.grey[600],
                        ),
                      ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Badge(
                      position: BadgePosition.topEnd(top: -15, end: -10),
                      toAnimate: true,
                      badgeContent: Text(
                        '3',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                        ),
                      ),
                      child: SvgPicture.asset(
                        ('assets/svg/Shape.0.0.svg'),
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Active Balance + Image
            Container(
              padding: EdgeInsets.only(left: 16, top: 20, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ACTIVE BALANCE",
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kBlueColor,
                        ),
                      ),
                      Text(
                        "\$ 43,650.10",
                        style: GoogleFonts.openSans(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: kBlueColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('assets/image/mouno.jpg'))),
                  ),
                ],
              ),
            ),

            // Operation
            Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, bottom: 13, top: 29, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Operation",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kBlueColor,
                      ),
                    ),

                    // 4 Dots
                    Row(
                        children: map<Widget>(datas, (index, selected) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 9,
                            width: 9,
                            margin: EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: current == index
                                    ? kBlueColor
                                    : kTwentyBlueColor),
                          );
                        })),
                  ],
                )),
            //Operation Ends

            // Operation Dots
            SizedBox(
              height: 123,
              child: ListView.builder(
                itemCount: datas.length,
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: OperationCard(
                      operation: datas[index].name,
                      selectedIcon: datas[index].selectedIcon,
                      unselectedIcon: datas[index].unselectedIcon,
                      isSelected: current == index,
                      context: this,
                    ),
                  );
                },
              ),
            ),





            //Cards Design

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 199,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 1990,
                      width: 344,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(cards[index].cardBackground),
                      ),

                      child: Stack(
                        children: <Widget>[

                          Positioned(
                            child:
                                SvgPicture.asset(cards[index].cardElementTop),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                cards[index].cardElementBottom),
                          ),
                          Positioned(
                            left: 29,
                            top: 48,
                            child: Text(
                              "Card Number",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            top: 65,
                            child: Text(
                              cards[index].cardNumber,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: kWhiteColor,
                              ),
                            ),
                          ),

                          Positioned(
                            right: 21,
                            top: 35,
                            child: SvgPicture.asset(
                              'assets/svg/Master_Card.svg',
                              width: 27,
                              height: 27,
                            ),
                          ),

                          Positioned(
                            left: 29,
                            bottom: 45,
                            child: Text(
                              'Card Holder Name',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            bottom: 21,
                            child: Text(
                              cards[index].user,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 202,
                            bottom: 45,
                            child: Text(
                              'Expiry Date',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 202,
                            bottom: 21,
                            child: Text(
                              cards[index].cardExpired,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                          //Positioned(child: child)
                        ],
                      ),
                    );
                  }),
            ),
            //cards End



            // Others Section

            Padding(
              padding:
                  EdgeInsets.only(left: 16, bottom: 13, top: 29, right: 10),
              child: Text(
                "Others",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: kBlackColor,
                ),
              ),
            ),

            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: transactions.length,
              padding: EdgeInsets.only(left: 16, right: 16),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 150 ,
                  margin: EdgeInsets.only(bottom: 13),
                  padding:
                      EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 22),
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

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // First Column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Monthly Expenses",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: kRedColor
                          ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("01 Sept 2022 - 16 Jun 2022",
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: kBlueColor,
                            ),
                          ),

                          SizedBox(
                            height: 15,

                          ),

                          Text("\$4.570.80",
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: kBlueColor,
                          ),)
                        ],
                      ),


                      // Second Column
                      Column(
                        children: [
                          SvgPicture.asset('assets/svg/Expenses_Circle.svg')
                        ],
                        

                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// Operation Selected/Unselected dots + variables
class OperationCard extends StatefulWidget {
  final String operation;
  final String selectedIcon;
  final String unselectedIcon;
  final bool isSelected;
  _HomeScreenState context;

  OperationCard(
      {required this.operation,
        required this.selectedIcon,
        required this.unselectedIcon,
        required this.isSelected,
        required this.context});

  @override
  _OperationCardState createState() => _OperationCardState();
}

// Operation Design
class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kTenBlackColor,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(8.0, 8.0),
            )
          ],
          borderRadius: BorderRadius.circular(25),
          color: widget.isSelected ? kBlueColor : kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
              widget.isSelected ? widget.selectedIcon : widget.unselectedIcon),
          SizedBox(
            height: 9,
          ),

          SizedBox(
            height: 10,
            child: TextButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondScreen()));
              }, child: Text("",
            ),
            ),
          ),


          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.isSelected ? kWhiteColor : kBlueColor),
          )
        ],
      ),
    );
  }
}
