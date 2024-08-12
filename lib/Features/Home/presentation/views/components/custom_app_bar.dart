import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 40, bottom: 25),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.searchViewroute);
              },
              icon: const Icon(
                Icons.search,
                size: 26,
              )),
        ],
      ),
    );
  }
}
