import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/themes/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(isDarkmodeProvider);
    final selectedColor = ref.watch(selectedColorProvider);
    return MaterialApp.router(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme:
          AppTheme(selectedColor: selectedColor, isDarkMode: isDark).getTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
