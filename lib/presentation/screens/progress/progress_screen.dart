import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular Progress indicator'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.black12,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Circular y Linear Progress indicator Controlado'),
          SizedBox(
            height: 10,
          ),
          _ControlledIndicator(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class _ControlledIndicator extends StatelessWidget {
  const _ControlledIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value / 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progresiveValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: progresiveValue,
                      strokeWidth: 2,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: LinearProgressIndicator(
                      value: progresiveValue,
                    ))
                  ],
                ),
                Text('${(progresiveValue * 100)}')
              ],
            ),
          );
        });
  }
}
