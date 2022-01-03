import 'package:flutter/material.dart';
import 'package:r_home/presentation/routes/router.gr.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  final MyRouter _appRouter = MyRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cell Fence',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue[900],
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow[900],
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ), 
      routeInformationParser:  _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}

