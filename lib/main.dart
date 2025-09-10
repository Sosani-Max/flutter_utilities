import 'package:fluter_utilities/config/shared/app_data.dart';
import 'package:fluter_utilities/config/shared/default_theme.dart';
import 'package:fluter_utilities/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // สำคัญถ้าใช้ async main
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppData()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      // ใช้ defaultTheme ที่ประกาศไว้
      theme: defaultTheme.theme.copyWith(
        textTheme: GoogleFonts.notoSansThaiTextTheme(), // ใช้ Google Fonts
      ),
      darkTheme: defaultTheme.darkTheme.copyWith(
        textTheme: GoogleFonts.notoSansThaiTextTheme(),
      ),
      themeMode: ThemeMode.dark, // เริ่มต้นสว่าง
      home: const HomePage(),

      // Localization
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
