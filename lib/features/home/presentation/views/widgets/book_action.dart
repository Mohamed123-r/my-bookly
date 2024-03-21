import 'package:flutter/material.dart';
import 'package:my_bookly/core/widgets/custom_button.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          title: 'Free',
          color: 0xffFFFFFF,
          textColor: Colors.black,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ), onPressed: () async {
          final Uri url = Uri.parse(bookModel.volumeInfo!.canonicalVolumeLink!);
          if (await  canLaunchUrl(url)) {
           await launchUrl(url);
          }
        },
        ),
        CustomButton(
          title: 'Preview',
          color: 0xffEF8262,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ), onPressed: () async {
          final Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
          if (await  canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        ),
      ],
    );
  }
}
