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
      body: Column(
        children: const [
          SizedBox(height: 50),
          Header(),
          SizedBox(height: 50),
          Search(),
          SizedBox(height: 50),
          Category()
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
