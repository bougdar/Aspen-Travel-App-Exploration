import 'package:aspen_travel_app_exploration/Controller/BottomNavController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavController>();

    return Obx(() => Container(
          width: 377.w,
          padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 24),
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.00, 0.50),
              end: Alignment(-0.76, 0.12),
              colors: [const Color(0xFFFDFDFD), const Color(0xFFF5F5F5)],
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x0C176FF2),
                blurRadius: 22,
                offset: Offset(15, -19),
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _navItem(
                iconPath: 'assets/icons/Home.svg',
                index: 0,
                onTap: () {
                  controller.changeIndex(0);
                  Get.toNamed('/HomePage');
                },
                selected: controller.selectedIndex.value == 0,
              ),
              const SizedBox(width: 50),
              _navItem(
                iconPath: 'assets/icons/Ticket.svg',
                index: 1,
                onTap: () {
                  controller.changeIndex(1);
                  Get.toNamed('/TicketPage');
                },
                selected: controller.selectedIndex.value == 1,
              ),
              const SizedBox(width: 50),
              _navItem(
                iconPath: 'assets/icons/Heart.svg',
                index: 2,
                onTap: () {
                  controller.changeIndex(2);
                  Get.toNamed('/FavouritePage');
                },
                selected: controller.selectedIndex.value == 2,
              ),
              const SizedBox(width: 50),
              _navItem(
                iconPath: 'assets/icons/Profile.svg',
                index: 3,
                onTap: () {
                  controller.changeIndex(3);
                  Get.toNamed('/ProfilePage');
                },
                selected: controller.selectedIndex.value == 3,
              ),
            ],
          ),
        ));
  }

  Widget _navItem({
    required String iconPath,
    required int index,
    required VoidCallback onTap,
    required bool selected,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 24.w,
        height: 24.h,
        child: SvgPicture.asset(
          iconPath,
          width: 19.w,
          height: 20.h,
          color: selected ? const Color(0xFF196EEE) : Colors.grey,
        ),
      ),
    );
  }
}
