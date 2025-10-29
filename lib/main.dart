import 'package:caremixer_test/app_theme/app_theme_state.dart';
import 'package:caremixer_test/routes/base_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return MaterialApp.router(
          title: 'Caremixer',
          routerConfig: baseRouter,
          theme: ref.watch(appThemeStateProvider).materialTheme,
          darkTheme: ref.watch(appThemeStateProvider).materialTheme,
        );
      },
    );
  }
}
