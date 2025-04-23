import 'package:flutter/material.dart';
import 'package:aspen_travel_app_exploration/view/widget/bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 25),
              Search(),
              SizedBox(height: 25),
              Category(),
              SizedBox(height: 25),
              Popular(),
              SizedBox(height: 25),
              Recommended(),
            ],
          ),
        ),
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
        width: 335.w,
        height: 56.h,
        child: Stack(
          children: [
            Positioned(
              left: 227.w,
              top: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16.w,
                    height: 16.h,
                    child: SvgPicture.asset(
                      'assets/icons/location-1.svg',
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Aspen, USA',
                    style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 12,
                      fontFamily: 'CircularXX',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 4),
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: SvgPicture.asset(
                      'assets/icons/Arrow - Down 2.svg',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
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
            const Positioned(
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
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 52.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: ShapeDecoration(
          color: const Color(0xFFF3F8FE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.search, size: 20, color: Colors.grey),
            SizedBox(width: 8.w),
            Expanded(
              child: TextField(
                style: const TextStyle(
                  color: Color(0xFFB7B7B7),
                  fontFamily: 'CircularXX',
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  hintText: 'Find things to do',
                  hintStyle: TextStyle(color: Color(0xFFB7B7B7)),
                  border: InputBorder.none,
                  isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 28,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.99, 0.72),
                  end: Alignment(-0.03, 0.23),
                  colors: [const Color(0xFFF3F8FE), const Color(0xFFF3F8FE)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      color: const Color(0xFF176EF2),
                      fontSize: 14,
                      fontFamily: 'CircularXX',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Hotels',
              style: TextStyle(
                color: const Color(0xFFB7B7B7),
                fontSize: 14,
                fontFamily: 'CircularXX',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Food',
              style: TextStyle(
                color: const Color(0xFFB7B7B7),
                fontSize: 14,
                fontFamily: 'CircularXX',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Adventure',
              style: TextStyle(
                color: const Color(0xFFB7B7B7),
                fontSize: 14,
                fontFamily: 'CircularXX',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Adventure',
              style: TextStyle(
                color: const Color(0xFFB7B7B7),
                fontSize: 14,
                fontFamily: 'CircularXX',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 274.h,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular ',
                    style: TextStyle(
                      color: const Color(0xFF232323),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: const Color(0xFF176EF2),
                      fontSize: 12,
                      fontFamily: 'CircularXX',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 188.w,
                      height: 240.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/istockphoto-104731717-612x612.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.50, 0.79),
                                  end: Alignment(0.50, 1.00),
                                  colors: [
                                    const Color(0x002A5A52),
                                    const Color(0xFF2A5A52)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x492381D7),
                                    blurRadius: 25.79,
                                    offset: Offset(0, 11.05),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 148.w,
                            top: 200.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F8FE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: SvgPicture.asset(
                                      'assets/icons/Group 3418.svg',
                                      width: 15.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12.w,
                            top: 175.h,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 6,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      Text(
                                        'Alley Palace',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4.w,
                                    children: [
                                      Container(
                                          width: 16.w,
                                          height: 16.h,
                                          child: Stack(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/star.svg',
                                                width: 16.w,
                                                height: 16.h,
                                              ),
                                            ],
                                          )),
                                      Text(
                                        '4.1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 188.w,
                      height: 240.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/istockphoto-104731717-612x612.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.50, 0.79),
                                  end: Alignment(0.50, 1.00),
                                  colors: [
                                    const Color(0x002A5A52),
                                    const Color(0xFF2A5A52)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x492381D7),
                                    blurRadius: 25.79,
                                    offset: Offset(0, 11.05),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 148.w,
                            top: 200.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F8FE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: SvgPicture.asset(
                                      'assets/icons/Group 3418.svg',
                                      width: 15.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12.w,
                            top: 175.h,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 6,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      Text(
                                        'Alley Palace',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4.w,
                                    children: [
                                      Container(
                                          width: 16.w,
                                          height: 16.h,
                                          child: Stack(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/star.svg',
                                                width: 16.w,
                                                height: 16.h,
                                              ),
                                            ],
                                          )),
                                      Text(
                                        '4.1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 188.w,
                      height: 240.h,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/istockphoto-104731717-612x612.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 188.w,
                              height: 240.h,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.50, 0.79),
                                  end: Alignment(0.50, 1.00),
                                  colors: [
                                    const Color(0x002A5A52),
                                    const Color(0xFF2A5A52)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x492381D7),
                                    blurRadius: 25.79,
                                    offset: Offset(0, 11.05),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 148.w,
                            top: 200.h,
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF3F8FE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: SvgPicture.asset(
                                      'assets/icons/Group 3418.svg',
                                      width: 15.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12.w,
                            top: 175.h,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 6,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 10,
                                    children: [
                                      Text(
                                        'Alley Palace',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF4C5652),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(59),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: 4.w,
                                    children: [
                                      Container(
                                          width: 16.w,
                                          height: 16.h,
                                          child: Stack(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icons/star.svg',
                                                width: 16.w,
                                                height: 16.h,
                                              ),
                                            ],
                                          )),
                                      Text(
                                        '4.1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'CircularXX',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 364.w,
        height: 190.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: const Color(0xFF232323),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 4, top: 4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.01, 0.06),
                        end: Alignment(0.96, 0.89),
                        colors: [Colors.white, const Color(0xFFF5F5F5)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFF4F4F4),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x2B979FB2),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 166.w,
                          height: 96.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/istockphoto-104731717-612x612.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF3A544F),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              Text(
                                '4N/5D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 3,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Text(
                                  'Explore Aspen',
                                  style: TextStyle(
                                    color: const Color(0xFF232323),
                                    fontSize: 14,
                                    fontFamily: 'CircularXX',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                      color: const Color(0xFF3A544F),
                                      fontSize: 10,
                                      fontFamily: 'CircularXX',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 4, top: 4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.01, 0.06),
                        end: Alignment(0.96, 0.89),
                        colors: [Colors.white, const Color(0xFFF5F5F5)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFF4F4F4),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x2B979FB2),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 166.w,
                          height: 96.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/istockphoto-104731717-612x612.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF3A544F),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              Text(
                                '4N/5D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 3,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Text(
                                  'Explore Aspen',
                                  style: TextStyle(
                                    color: const Color(0xFF232323),
                                    fontSize: 14,
                                    fontFamily: 'CircularXX',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                      color: const Color(0xFF3A544F),
                                      fontSize: 10,
                                      fontFamily: 'CircularXX',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 4, top: 4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.01, 0.06),
                        end: Alignment(0.96, 0.89),
                        colors: [Colors.white, const Color(0xFFF5F5F5)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFF4F4F4),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x2B979FB2),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 166.w,
                          height: 96.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/istockphoto-104731717-612x612.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF3A544F),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              Text(
                                '4N/5D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 3,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Text(
                                  'Explore Aspen',
                                  style: TextStyle(
                                    color: const Color(0xFF232323),
                                    fontSize: 14,
                                    fontFamily: 'CircularXX',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                      color: const Color(0xFF3A544F),
                                      fontSize: 10,
                                      fontFamily: 'CircularXX',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 4, top: 4),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.01, 0.06),
                        end: Alignment(0.96, 0.89),
                        colors: [Colors.white, const Color(0xFFF5F5F5)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFF4F4F4),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x2B979FB2),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 166.w,
                          height: 96.h,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/istockphoto-104731717-612x612.jpg"),
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF3A544F),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              Text(
                                '4N/5D',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 3,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Text(
                                  'Explore Aspen',
                                  style: TextStyle(
                                    color: const Color(0xFF232323),
                                    fontSize: 14,
                                    fontFamily: 'CircularXX',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 2),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 4,
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(),
                                  ),
                                  Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                      color: const Color(0xFF3A544F),
                                      fontSize: 10,
                                      fontFamily: 'CircularXX',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
