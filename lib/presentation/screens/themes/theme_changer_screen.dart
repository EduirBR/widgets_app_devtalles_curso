import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme-changer';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(isDarkmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes Changer'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              },
              icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode))
        ],
      ),
      body: const _ThemeScreenBody(),
    );
  }
}

class _ThemeScreenBody extends ConsumerWidget {
  const _ThemeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final color = colors[index];
          return RadioListTile(
              activeColor: color,
              title: Text(
                'Color',
                style: TextStyle(color: color),
              ),
              value: index,
              groupValue: ref.watch(selectedColor),
              onChanged: (value) {
                ref.read(selectedColor.notifier).update((v) => value!);
              });
        });
  }
}
