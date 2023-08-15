import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'config/app_color.dart';
import 'config/font.dart';
import 'config/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '東京Flutterハッカソン',
      theme: AppTheme.data,
      routeInformationProvider: Routes.instance.router.routeInformationProvider,
      routerDelegate: Routes.instance.router.routerDelegate,
      routeInformationParser: Routes.instance.router.routeInformationParser,
    );
  }
}

class AppTheme {
  AppTheme._();
  static final data = ThemeData(
    fontFamily: Font.notoSansJP,
    fontFamilyFallback: const [Font.notoColorEmoji],
    primaryColor: Colors.white,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: AppColor.primaryNavyColor,
          secondary: AppColor.primaryYellowColor,
        ),
    scaffoldBackgroundColor: AppColor.backgroundBlack,
    cardTheme: const CardTheme(
      margin: EdgeInsets.zero,
    ),
    appBarTheme: const AppBarTheme(
      titleSpacing: 0,
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.primaryNavyColor,
      ),
      titleTextStyle: TextStyle(
        color: AppColor.primaryNavyColor,
        fontFamily: Font.notoSansJP,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColor.primaryNavyColor,
        padding: const EdgeInsets.all(16),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.primaryNavyColor,
        side: const BorderSide(
          color: AppColor.primaryNavyColor,
          style: BorderStyle.solid,
          width: 1,
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.primaryNavyColor,
    ),
    tooltipTheme: const TooltipThemeData(
      padding: EdgeInsets.all(8),
    ),
    textTheme: ThemeData().textTheme.copyWith(
          displayLarge: const TextStyle(
            fontFamily: Font.yesevaOne,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: const TextStyle(
            fontFamily: Font.zenAntiqueSoft,
            color: AppColor.primaryNavyColor,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleMedium: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: const TextStyle(fontFamily: Font.notoSansJP),
          bodyMedium: const TextStyle(fontFamily: Font.notoSansJP),
          bodySmall: const TextStyle(fontFamily: Font.notoSansJP),
          labelLarge: const TextStyle(
            fontFamily: Font.notoSansJP,
            fontWeight: FontWeight.bold,
          ),
        ),
  );
}
