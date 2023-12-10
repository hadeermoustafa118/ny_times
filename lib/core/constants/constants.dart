//ZxL86Msp2sM37KvNAASDmXAehC9YoqM6 app key

import 'package:flutter/material.dart';

class ApiConstants {
  static String appKey = 'ZxL86Msp2sM37KvNAASDmXAehC9YoqM6';

  static String apiPath(String period) =>
      'https://api.nytimes.com/svc/mostpopular/v2/viewed/$period.json';
}

class AppColors {
  static Color greyShade = Colors.grey.shade200;
  static Color greyColor = Colors.grey;
  static Color tealShade = Colors.tealAccent.withOpacity(0.75);
}

class AppStrings {
  static String appBarTitle = 'NY Times Most Popular';
  static String loremText =
      "Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  static String fallBackImg =
      'https://www.creativefabrica.com/wp-content/uploads/2020/12/29/Line-File-Not-Found-Icon-Office-Graphics-7428373-1.jpg';
}
