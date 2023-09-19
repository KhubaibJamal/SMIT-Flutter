import 'package:flutter/material.dart';
import 'package:mini_project/screen/cart/cart_screen.dart';
import 'package:mini_project/screen/category/category_screen.dart';
import 'package:mini_project/screen/details/detail_screen.dart';
import 'package:mini_project/screen/favorite/favorite_screen.dart';
import 'package:mini_project/screen/home/home_screen.dart';
import 'package:mini_project/screen/products/product_screen.dart';
import 'package:mini_project/screen/profile/profile_screen.dart';
import 'package:mini_project/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  ProductScreen.routeName: (context) => const ProductScreen(title: ""),
  DetailScreen.routeName: (context) => const DetailScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
