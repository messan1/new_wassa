import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'connectWithSocialNetwork.dart';

class NetworkGroup extends StatelessWidget {
  const NetworkGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConnectWithSocialNetwork(
          fontAwesomeIcons: FontAwesomeIcons.facebook,
          onTap: () {},
        ),
        ConnectWithSocialNetwork(
          fontAwesomeIcons: FontAwesomeIcons.twitter,
          onTap: () {},
        ),
        ConnectWithSocialNetwork(
          fontAwesomeIcons: FontAwesomeIcons.google,
          onTap: () {},
        ),
      ],
    );
  }
}
