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
  MenuItem(
      title: 'Snackbars y Dialogos',
      subTitle: 'Indicadores en pantallas',
      url: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animaciones',
      subTitle: 'Animacion en pantallas',
      url: '/animated',
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'UI Controladores',
      subTitle: 'Controles en pantallas',
      url: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'App Tutotial',
      subTitle: 'Tutorial de la app',
      url: '/app-tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Scroll Infinito y pull ',
      subTitle: 'Listas infinitas y pull para actualizar',
      url: '/iscroll',
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: 'Counter Screen + Riverpod',
      subTitle: 'Pantalla contadora con riverpod',
      url: '/counters',
      icon: Icons.add),
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'Cambiar el tema',
      url: '/themes',
      icon: Icons.color_lens_sharp),
];
