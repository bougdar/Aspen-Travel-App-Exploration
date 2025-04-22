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
          child: Column(
            children: [
              ProductImage(),
            ],
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
