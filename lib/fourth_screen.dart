import 'package:bank_app_dribble/fifth_screen.dart';
import 'package:bank_app_dribble/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_constant.dart';
import 'models/third_screen.dart';

class Scan_QR extends StatefulWidget {
  const Scan_QR({Key? key}) : super(key: key);

  @override
  State<Scan_QR> createState() => _Scan_QRState();
}

class _Scan_QRState extends State<Scan_QR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 60, right: 16),
        child: Column(
          children: [
            // ----------- Cross -----------//
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  child: Icon(
                    Icons.close,
                    color: kBlueColor,
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PLACE THE QR CODE INSIDE THE AREA",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kBlueColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Scanning will start automatically",
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
            // ----------- Cross -----------//

            const SizedBox(
              height: 150,
            ),

            //-----------------QR----------------//
            Container(
              child: Stack(children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SvgPicture.asset("assets/svg/QR_Corners.svg"),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100, top: 40.0),
                          child: Image.asset(
                            'assets/image/QR.png',
                            //height: 100,
                          ),
                        )
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
                              "Continue & Proceed",
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
                                    return Congratulations();
                                  }));
                                },
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
    );
  }
}
