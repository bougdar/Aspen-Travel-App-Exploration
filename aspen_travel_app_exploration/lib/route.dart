import 'package:aspen_travel_app_exploration/view/pages/Ticket.dart';
import 'package:aspen_travel_app_exploration/view/pages/favourite.dart';
import 'package:aspen_travel_app_exploration/view/pages/home.dart';
import 'package:aspen_travel_app_exploration/view/pages/profile.dart';
import 'package:get/get.dart';
import 'package:aspen_travel_app_exploration/view/pages/login.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: '/HomePage', page: () => const HomePage()),
    GetPage(name: '/TicketPage', page: () => const TicketPage()),
    GetPage(name: '/FavouritePage', page: () => const FavouritePage()),
    GetPage(name: '/ProfilePage', page: () => ProfilePage()),

  ];
}
