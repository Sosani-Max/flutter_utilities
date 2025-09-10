import 'package:fluter_utilities/config/shared/app_data.dart';
import 'package:fluter_utilities/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  await GetStorage.init();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => AppData())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(),
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      themeMode: ThemeMode
          .light, // เริ่มต้นเป็นสว่าง (ถ้าอยากเริ่มมืดใส่ ThemeMode.dark)
      home: HomePage(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('th', 'TH'),
      ],
    );
  }
}
