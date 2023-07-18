import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/globals.dart';
import 'package:the_holy_quran/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Quran Learning',
                    style: GoogleFonts.poppins(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  Text(
                    'Kelompok 4',
                    style: GoogleFonts.poppins(
                        color: primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Mari Pelajari Al-Quran dan Mengamalkannya ',
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: const Color(0xFF8789A3)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset('assets/svgs/quran-kartun.jpg'),
                      ),
                      Positioned(
                        left: 0,
                        bottom: -23,
                        right: 0,
                        child: Center(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 16),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF9B091),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
