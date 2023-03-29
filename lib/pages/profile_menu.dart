import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuProfilePage extends StatelessWidget {
  const MenuProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img-profile2.png"))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Name",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff0F283F),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Naufal Tsany Qadamushidqi",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff0F283F),
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Gender",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff0F283F),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Male",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff0F283F),
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Birth Place/Birth Date",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff0F283F),
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bandung/02 November 2003",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff0F283F),
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
