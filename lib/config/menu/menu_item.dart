import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String name;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
    required this.name,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Botones y estilos',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    name: ButtonsScreen.name, // Opcional
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Tarjetas y estilos',
    link: '/cards',
    icon: Icons.credit_card,
    name: CardsScreen.name, // Opcional
  ),
];
