import 'package:blog_app/core/constants/my_strings.dart';
import 'package:blog_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (_, __) {
          return MaterialApp.router(
            title: MyStrings.appName,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.config(),
            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}
