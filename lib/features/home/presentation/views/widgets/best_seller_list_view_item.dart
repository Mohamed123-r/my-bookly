import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.test,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width *0.5,
                child: const Text(
                  "Harry Potterand the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle24,
                ),
              ),
              Text(
                "J.K. Rowling",
                style: Styles.textStyle16.copyWith(
                  color: Colors.grey
                ),
              ),
              const Row(
                children: [
                  Text(
                    "19.99 €",
                    style: Styles.textStyle20
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
