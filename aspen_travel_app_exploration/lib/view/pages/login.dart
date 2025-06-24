import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Rectangle 988.png'),
            fit: BoxFit.cover,
          ),
          color: const Color(0xFFEEF1F5),
          boxShadow: [
            BoxShadow(
              color: Color(0x540757D0),
              blurRadius: 77,
              offset: Offset(34, 24),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 32.w,
              top: 712.h,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/HomePage');
                },
                child: Container(
                  width: 311.w,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 44, vertical: 16),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.99, 0.72),
                      end: Alignment(-0.03, 0.23),
                      colors: [const Color(0xFF176EF2), const Color(0xFF186EEE)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x141C17F2),
                        blurRadius: 33,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'CircularXX',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 57.w,
              top: 93.h,
              child: Text(
                'Aspen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 116,
                  fontFamily: 'Hiatus',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 9.86,
                ),
              ),
            ),
            Positioned(
              left: 32.w,
              top: 553.h,
              child: SizedBox(
                width: 300,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Plan your',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1.13,
                        ),
                      ),
                      TextSpan(
                        text: ' Luxurious Vacation',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 1.13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
