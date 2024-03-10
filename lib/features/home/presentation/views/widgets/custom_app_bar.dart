import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logo,
          width: 100,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(
              AppRouter.kSearchView,
            );
          },
          icon: const Icon(
            Icons.search_rounded,
            size: 32,
          ),
        ),
      ],
    );
  }
}
