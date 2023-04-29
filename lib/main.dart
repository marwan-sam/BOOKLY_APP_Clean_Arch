import 'package:bookly_app/Features/Home/presentation/screens/home_screen.dart';
import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Features/Home/domain/entities/book_entity.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  // setupLocator();
  await Hive.openBox<BookEntity>(keyFeatureBoxHive);
  await Hive.openBox<BookEntity>(keyFeatureBoxHive);
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundApp,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      // home: const SplashScreen(),
      routerConfig: RouterApp.routers,
    );
  }
}
