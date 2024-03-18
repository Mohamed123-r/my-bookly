import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:redacted/redacted.dart';
import '../../features/home/presentation/views/widgets/book_rating.dart';
import '../utils/styles.dart';

class CustomLoadingNewestBook extends StatelessWidget {
  const CustomLoadingNewestBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemCount: 20,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Expanded(
          child: SizedBox(
            height: 135,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 2.6 / 4,
                      child: Image.asset(
                        AssetsData.logo,
                        fit: BoxFit.fill,
                      ).redacted(
                        context: context,
                        redact: true,
                        configuration: RedactedConfiguration(
                          animationDuration: const Duration(milliseconds: 500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        child: const Text(
                          'book.volumeInfo.title!',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle24,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        " book.volumeInfo",
                        style: Styles.textStyle16.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Free  ",
                            style: Styles.textStyle20,
                          ),
                          BookRating(
                            rating: 4.5,
                            ratingCount: 120,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ).redacted(
              context: context,
              redact: true,
              configuration: RedactedConfiguration(
                animationDuration: const Duration(milliseconds: 500),
              )),
        );
      },
    ));
  }
}
