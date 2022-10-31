import 'package:dalena_portfolio/constants.dart';
import 'package:dalena_portfolio/controller/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Obx(
      () => Container(
        color: Colors.deepPurple[200],
        child: ListView(children: [
          DrawerHeader(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3.5),
              child: Text('Dalena'),
            ),
          ),
          ...List.generate(
              _controller.menuItems.length,
              (index) => DrawerItem(
                    isActive: index == _controller.selectedIndex,
                    title: _controller.menuItems[index],
                    press: () => _controller.setMenuIndex(index),
                  ))
        ]),
      ),
    ));
  }
}

class DrawerItem extends StatelessWidget {
  final bool isActive;
  final VoidCallback press;
  final String title;
  const DrawerItem({
    Key? key,
    required this.isActive,
    required this.press,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        title: Text(title),
        selected: isActive,
        selectedTileColor: Colors.amber,
        onTap: press,
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      ),
    );
  }
}
