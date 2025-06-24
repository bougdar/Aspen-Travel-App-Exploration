import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'Controller/BottomNavController.dart';
import 'route.dart';

void main() {
  
  Get.put(BottomNavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const Size figmaDesignSize = Size(375, 812);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: figmaDesignSize,
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (context, _) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/login',
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
