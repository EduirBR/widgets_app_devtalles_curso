import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  // showAboutDialog(
                  //     context: context,
                  //     children: [const Text('Licencias de la app')]);
                  showLicensePage(context: context);
                },
                child: const Text('Licencias usadas')),
            FilledButton(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogo')),
          ],
        ),
      ),
    );
  }
}

void showCustomSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final snak = SnackBar(
    content: const Text('This is a text'),
    action: SnackBarAction(
      label: 'OK!',
      onPressed: () {},
    ),
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snak);
}

void openDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('Estas seguro?'),
      content: const Text('dat dat dat'),
      actions: [
        TextButton(
            onPressed: () => context.pop(), child: const Text('Cancelar')),
        FilledButton(onPressed: () {}, child: const Text('Aceptar')),
      ],
    ),
  );
}
