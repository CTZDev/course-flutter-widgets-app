import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  final appMenuItemsSize = appMenuItems.length;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItemsSize,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({required this.menuItem});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon, color: appTheme.primary),
      trailing: Icon(Icons.arrow_forward_ios, color: appTheme.primary),
      onTap: () {
        // Navigator.pushNamed(context, menuItem.link);
        // context.push(menuItem.link);
        context.pushNamed(menuItem.name);
      },
    );
  }
}
