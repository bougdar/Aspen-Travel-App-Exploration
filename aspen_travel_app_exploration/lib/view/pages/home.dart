import 'package:flutter/material.dart';
import 'package:aspen_travel_app_exploration/view/widget/bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          Header()
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.amber,
      width: 335.w,
      height: 56.h,
      child: Stack(
        children: [
          Positioned(
            left: 227.w,
            top: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 6,
              children: [
                SizedBox(
                  width: 16.w,
                  height: 16.h,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                            child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/location-1.svg',
                              width: 16.w,
                              height: 16.h,
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Aspen, USA',
                  style: TextStyle(
                    color: const Color(0xFF5F5F5F),
                    fontSize: 12,
                    fontFamily: 'CircularXX',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                    width: 16,
                    height: 16,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Arrow - Down 2.svg',
                          width: 20,
                          height: 20,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Text(
              'Explore',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 17,
            child: Text(
              'Aspen',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
