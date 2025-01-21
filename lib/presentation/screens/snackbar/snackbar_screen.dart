import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars(); // para que se oculte rápido
    final snakback = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snakback);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, //Para forzar una respuesta en los botones
      builder: (context) => AlertDialog(
        title: const Text('Estás seguro?'),
        content: const Text(
            'Ex Lorem cillum ex non. Non excepteur veniam pariatur reprehenderit eu mollit commodo occaecat anim duis nulla sit nulla. Irure fugiat anim anim labore eu. Sunt et sit qui pariatur minim eiusmod laborum. Aliquip excepteur Lorem sint mollit ad excepteur ea officia.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Esse do veniam fugiat amet. Ea tempor excepteur officia adipisicing. Amet pariatur ex nulla officia aliquip tempor eu. Incididunt est consectetur amet occaecat excepteur consectetur excepteur. Voluptate do nostrud sit ex ea incididunt exercitation sunt minim.'),
              ]); // Muestra la licencias automáticamente.
            },
            child: const Text('Licencias usadas')),
        FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar diálogo'))
      ])),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
