import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halodek/pages/main_menu.dart';
import 'package:halodek/pages/profile_menu.dart';

class FunFactPage extends StatelessWidget {
  const FunFactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
            ),
          ),
          //const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainMenuPage()));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/menu_butt.png"))),
                        ),
                      ),
                      Text(
                        "PSYCHOLOGY",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF),
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuProfilePage()));
                        },
                        child: Container(
                          // margin: const EdgeInsets.symmetric(
                          //  horizontal: 15, vertical: 10),
                          width: 78,
                          height: 78,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/img-profile2.png"))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 298,
                height: 147,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/BOX1.png"))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 118),
                    width: 298,
                    height: 147,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/BOX2.png"))),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 298,
                height: 147,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/BOX3.png"))),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: 410,
                    height: 233,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img-cartoon.png"))),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
