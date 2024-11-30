import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String url;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.url,
      required this.icon});
}

const List<MenuItem> appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios Botones',
      url: '/bottons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Contenedor Estilizado',
      url: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      url: '/progress',
      icon: Icons.refresh_rounded),
];
