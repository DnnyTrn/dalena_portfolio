import 'package:dalena_portfolio/screens/responsive.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: IconButton(
              icon: Icon(Icons.email_outlined, color: Colors.white),
              onPressed: () {},
            ),
          ),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
              onPressed: () {},
            ),
          ),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
              onPressed: () {},
            ),
          ),
        SizedBox(width: kDefaultPadding),
        ElevatedButton(
            onPressed: () {},
            child: Text('Contact Me'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding /
                        (Responsive.isDesktop(context) ? 1 : 2))))
      ],
    );
  }
}
