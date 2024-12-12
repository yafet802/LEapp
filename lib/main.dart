import 'package:flutter/material.dart';
import 'package:leapp/screens/test/test1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1200),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              backgroundColor: const Color.fromRGBO(247, 249, 252, 1),
              body: Center(
                  child: ApartadoPrueba(
                habilitado: false,
                index: 0,
                onTap: (p0, p1) {},
                palabra: 'aguacate',
              ))),
        );
      },
    );
  }
}
