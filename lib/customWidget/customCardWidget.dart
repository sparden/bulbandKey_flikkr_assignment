import 'package:flikkr_assignment/modal/userReviewData.dart';
import 'package:flutter/material.dart';

import '../screens/review_form.dart';

class CustomCard extends StatelessWidget {
  final String cardImage;
  bool formFilled = false;
  List review;

  CustomCard({this.cardImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Card(
        color: Colors.green,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Image.network(
          cardImage,
        ),
      ),
    );
  }
}
