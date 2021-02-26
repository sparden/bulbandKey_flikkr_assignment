import 'package:flutter/material.dart';

class ReviewForm extends StatelessWidget {
  final String cardImage;
  TextEditingController nameController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  ReviewForm({
    this.cardImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserReviewForm'),
      ),
      body: Column(
        children: [
          Container(height: 100, child: Image.network(cardImage)),
          Container(
            margin: EdgeInsets.all(40.0),
            child: TextField(
              controller: nameController,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            child: TextField(
              controller: ratingController,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'Rating',
                hintText: 'Rating out of 5',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            child: TextField(
              controller: reasonController,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'Reason',
                hintText: 'Reason',
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('Submit'),
              onPressed: () {
                Navigator.pop(context, [
                  nameController.text,
                  ratingController.text,
                  reasonController.text,
                  cardImage,
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
