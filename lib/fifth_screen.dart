import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constant.dart';
import 'home_screen.dart';
import 'models/third_screen.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 60, right: 16),
        child: Column(
          children: [

            //-----------------QR----------------//
            Container(
              child: Stack(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 150.0),
                          child: SvgPicture.asset("assets/svg/Congratulations.svg"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Withdrawal Request Successful! ",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: kBlackColor,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Your withdrawal request has been confirmed. You can\n   "
                              "track its progress on the Withdrawal History page",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: kGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            //-----------QR Ends------------//

            //---------Continue & Proceed--------//
            Padding(
              padding: const EdgeInsets.only(top: 150),
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
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "              THAT’S GREAT! THANKS!",
                              style: GoogleFonts.inter(
                                fontSize: 16,
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
                              child:
                              SizedBox(
                                height: 10,
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>HomeScreen()));
                                  }, child: Text("",
                                ),
                                ),
                              ),
                              /*TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return ThirdScreen();
                                      }));
                                },
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                ),
                              ),*/

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
    );
  }
}
