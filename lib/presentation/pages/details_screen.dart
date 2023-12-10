import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.caption,
    required this.byLine,
    required this.title,
    required this.date,
    required this.source,
    required this.imgUrl,
  }) : super(key: key);
  final String title;
  final String caption;
  final String byLine;
  final String date;
  final String source;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyShade,
      appBar: AppBar(
        backgroundColor: AppColors.tealShade,
        elevation: 0.5,
        title: const Text(
          'NY Times Most Popular',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                caption,
                style:  TextStyle(fontSize: 18, color: AppColors.greyColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      byLine,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(imgUrl)),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Source: $source',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
               Text(
                AppStrings.loremText,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
