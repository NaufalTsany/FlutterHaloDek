import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:halodek/pages/profile_menu.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role, String rate) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xffFFFFFF)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image:
                    DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff0D2841),
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      role,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff0D2841),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/ic-star.png"))),
                    ),
                    Text(
                      rate,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff308CF8),
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello, \nNaufalTsany",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff0D2841),
                            fontSize: 24,
                          )),
                      const SizedBox(
                        height: 6,
                      ),
                      Text("Stay Healthy with Our Spesialis Doctor",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff9698A9),
                            fontSize: 14,
                          ))
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuProfilePage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      width: 78,
                      height: 78,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/img-profile2.png"))),
                    ),
                  ),
                ],
              ),
              doctorCard("assets/img-doc1.png", "dr. Mawar N",
                  "Spesialis Penyakit Dalam", "4.8"),
              doctorCard("assets/img-doc2.png", "dr. Zizah Ayuningsih",
                  "Spesialis Kulit Kelamin", "4.8")
            ]),
          ),
        ),
      ),
    );
  }
}
