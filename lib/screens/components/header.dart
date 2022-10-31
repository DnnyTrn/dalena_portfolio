import 'package:dalena_portfolio/constants.dart';
import 'package:dalena_portfolio/controller/MenuController.dart';
import 'package:dalena_portfolio/screens/components/socials.dart';
import 'package:dalena_portfolio/screens/components/web_menu.dart';
import 'package:dalena_portfolio/screens/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.deepPurple[300],
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Row(children: [
                if (!Responsive.isDesktop(context))
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => _controller.openOrCloseDrawer(),
                    color: Colors.white,
                  ),
                Text('DT Art Portfolio',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Spacer(),
                if (Responsive.isDesktop(context)) WebMenu(),
                Spacer(),
                Socials(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
