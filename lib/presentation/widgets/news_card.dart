import 'package:flutter/material.dart';
import 'package:nytimes/core/constants/constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.imgUrl,
    required this.byLine,
    required this.title,
    required this.date,
  }) : super(key: key);
  final String title;
  final String byLine;
  final String date;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
          margin: const EdgeInsets.all(20.0),
          color: AppColors.greyShade,
          elevation: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 44,
                backgroundImage: NetworkImage(imgUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width:300,child: Text(
                      byLine,
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(fontSize: 16, color:AppColors.greyColor),
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         Icon(
                          Icons.calendar_today_outlined,
                          color:AppColors.greyColor,
                          size: 20,
                        ),
                        Text(
                          date,
                          style:
                               TextStyle(fontSize: 14, color:AppColors.greyColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
               Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.greyColor,
                size: 32,
              )
            ],
          )),
    );
  }
}
