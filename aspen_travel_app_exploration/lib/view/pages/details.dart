import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProductImage(),
                SizedBox(height: 25),
                ProductInfo(),
                SizedBox(height: 25),
                Info(),
                SizedBox(height: 25),
                Book()
              ],
            ),
          ),
        ));
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 386.h,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 335.w,
                height: 386.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFC4C4C4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 335.w,
                height: 386.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/istockphoto-104731717-612x612.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 277.w,
              top: 321.h,
              child: Container(
                width: 44.w,
                height: 44.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F7FD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x190038FF),
                      blurRadius: 19,
                      offset: Offset(0, 6),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/redHeart.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 12.w,
              top: 12.h,
              child: Container(
                width: 40.w,
                height: 40.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF3F8FE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Stack(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 167.h,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 68,
              child: SizedBox(
                width: 335.w,
                child: Text(
                  'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
                  style: TextStyle(
                    color: const Color(0xFF3A544F),
                    fontSize: 14,
                    fontFamily: 'CircularXX',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 145.h,
              child: Text(
                'Read more',
                style: TextStyle(
                  color: const Color(0xFF176EF2),
                  fontSize: 14,
                  fontFamily: 'CircularXX',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 740.w,
              top: 167.h,
              child: Container(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(-1.57),
                width: 24.w,
                height: 24.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Stack(),
              ),
            ),
            Positioned(
              left: 3.w,
              top: 35.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 9.w,
                children: [
                  Container(
                      width: 16.w,
                      height: 16.h,
                      child: Stack(
                        children: [
                          SvgPicture.asset('assets/icons/star.svg',
                              width: 16.w, height: 16.h),
                        ],
                      )),
                  Text(
                    '4.5 (355 Reviews)',
                    style: TextStyle(
                      color: const Color(0xFF5F5F5F),
                      fontSize: 12,
                      fontFamily: 'CircularXX',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 266.w,
              top: 10.h,
              child: Text(
                'Show map',
                style: TextStyle(
                  color: const Color(0xFF176EF2),
                  fontSize: 14,
                  fontFamily: 'CircularXX',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Text(
                'Coeurdes Alpes',
                style: TextStyle(
                  color: const Color(0xFF232323),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 112.h,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Text(
                'Facilities',
                style: TextStyle(
                  color: const Color(0xFF232323),
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 38.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 14.w,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.99, 0.72),
                        end: Alignment(-0.03, 0.23),
                        colors: [
                          const Color(0xFFF3F8FE),
                          const Color(0xFFF3F8FE)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6.w,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Vector.svg',
                              width: 32.w,
                              height: 32.h,
                            ),
                          ]),
                        ),
                        Text(
                          '1 Heater',
                          style: TextStyle(
                            color: const Color(0xFFB7B7B7),
                            fontSize: 10,
                            fontFamily: 'CircularXX',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.99, 0.72),
                        end: Alignment(-0.03, 0.23),
                        colors: [
                          const Color(0xFFF3F8FE),
                          const Color(0xFFF3F8FE)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Vector (1).svg',
                              width: 32.w,
                              height: 32.h,
                            ),
                          ]),
                        ),
                        Text(
                          'Dinner',
                          style: TextStyle(
                            color: const Color(0xFFC8C8C8),
                            fontSize: 10,
                            fontFamily: 'CircularXX',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.99, 0.72),
                        end: Alignment(-0.03, 0.23),
                        colors: [
                          const Color(0xFFF3F8FE),
                          const Color(0xFFF3F8FE)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6.w,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Vector (2).svg',
                              width: 32.w,
                              height: 32.h,
                            ),
                          ]),
                        ),
                        Text(
                          '1 Heater',
                          style: TextStyle(
                            color: const Color(0xFFB7B7B7),
                            fontSize: 10,
                            fontFamily: 'CircularXX',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.99, 0.72),
                        end: Alignment(-0.03, 0.23),
                        colors: [
                          const Color(0xFFF3F8FE),
                          const Color(0xFFF3F8FE)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Vector (3).svg',
                              width: 32.w,
                              height: 32.h,
                            ),
                          ]),
                        ),
                        Text(
                          'Pool',
                          style: TextStyle(
                            color: const Color(0xFFC8C8C8),
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
    );
  }
}

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335.w,
        height: 56.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 112.w,
              top: 0,
              child: Container(
                width: 223.w,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                      color: Color(0x3D0038FF),
                      blurRadius: 19,
                      offset: Offset(0, 6),
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
                      'Book Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'CircularXX',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(width: 24.w, height: 24.h, child: Stack(children: [
                            SvgPicture.asset(
                              'assets/icons/Arrow - Right.svg',
                              width: 24.w,
                              height: 24.h,
                            ),
                          ],)),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 4,
              child: Text(
                'Price',
                style: TextStyle(
                  color: const Color(0xFF232323),
                  fontSize: 12,
                  fontFamily: 'CircularXX',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 23,
              child: Text(
                '\$199',
                style: TextStyle(
                  color: const Color(0xFF2CD6A3),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
