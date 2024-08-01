import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Non pariatur deserunt magna eu ea sint ullamco voluptate ullamco aliqua ad.',
      'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Nulla culpa cupidatat ipsum veniam veniam.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Aute in esse cupidatat irure eiusmod nostrud commodo enim anim sit et officia incididunt quis.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          // ignore: unnecessary_const
          physics: const BouncingScrollPhysics(),
          children: slides
              .map((slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.caption,
                  imageUrl: slideData.imageUrl))
              .toList()),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
