import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_providers.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickCounter = ref.watch(counterProvider);
    final isDark = ref.watch(themeNotifierProvier).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen + Riverpod'),
        actions: [
          IconButton(
              onPressed: () =>
                  ref.read(themeNotifierProvier.notifier).toggleDarkMode(),
              icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode))
        ],
      ),
      body: Center(
        child: Text(
          'Valor $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(counterProvider.notifier).state ++;
          //otra forma de hacerlo es:
          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
