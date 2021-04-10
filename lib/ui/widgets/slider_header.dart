import 'package:diplomatic/constants/colors.dart';
import 'package:flutter/material.dart';

Widget renderSliderHeader(String title) {
  return Container(
    height: 50,
    margin: const EdgeInsets.only(
      top: 25,
      bottom: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 3,
              color: kprimaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Text(
            ' more ',
            style: const TextStyle(
              color: kprimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}
