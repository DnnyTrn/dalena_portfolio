import 'package:dalena_portfolio/controller/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            /// Scroll maximum end, if you want you can give hardcoded values also in place of _scrollController.position.maxScrollExtent
            _scrollController.animateTo(
                _scrollController.position.minScrollExtent,
                duration: Duration(seconds: 2),
                curve: Curves.ease);
          },
          child: Icon(Icons.arrow_upward_rounded)),
    );
  }
}
