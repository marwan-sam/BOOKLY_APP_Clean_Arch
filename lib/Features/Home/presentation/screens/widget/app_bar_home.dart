import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(children: [
        Image.asset(
          AssetsImg.logo,
          height: 25,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(RouterApp.keySearchRoute);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        )
      ]),
    );
  }
}
