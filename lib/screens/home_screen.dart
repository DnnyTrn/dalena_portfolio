import 'package:dalena_portfolio/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          'monalisa.jpeg',
          'starrynight.jpeg',
          'photo2.jpeg',
          'photo1.jpeg',
        ]
            .map((e) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child:
                    InteractiveViewer(child: Image.asset('assets/images/$e'))))
            .toList(),
      ),
    );
  }
}
