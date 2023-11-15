import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

List<MenuItem> appMenuItems = <MenuItem>[
  const MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined
      ),


  const MenuItem(
      title: 'Tarjetas',
      subTitle: 'un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),

      const MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y Controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),

      const MenuItem(
        title: 'Snackbars y dialogos',
        subTitle: 'Indicadores de pntalla',
        link: '/snackbars',
        icon: Icons.info_outline),

      const MenuItem(
        title: 'UI Controls + Tiles',
        subTitle: 'Una serie de controles de flutter',
        link: '/ui-controles',
        icon: Icons.car_rental_outlined),

      const MenuItem(
        title: 'Introduccion a la aplicacion',
        subTitle: 'pequeño tutorial Introductorio',
        link: '/tutorial',
        icon: Icons.access_alarm_rounded),

      const MenuItem(
        title: 'InfinateScroll y Pull',
        subTitle: 'Listas Infinitas y pull to refresh',
        link: '/infinate',
        icon: Icons.list_alt_rounded),
];
