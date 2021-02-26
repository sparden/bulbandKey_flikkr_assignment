import 'package:flikkr_assignment/customWidget/customCardWidget.dart';
import 'package:flikkr_assignment/modal/userReviewData.dart';
import 'package:flikkr_assignment/screens/review_form.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List review;
  String name = '';
  String rating = '';
  String reason = '';
  String image = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flikkr'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[0],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[0],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[1],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[1],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[2],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[2],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[3],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[3],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[4],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[4],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[5],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[5],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[6],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[6],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[7],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[7],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[8],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[8],
                        );
                      }),
                  GestureDetector(
                      child: CustomCard(
                        cardImage: ReviewData().images[9],
                      ),
                      onTap: () {
                        goToForm(
                          context,
                          ReviewData().images[9],
                        );
                      }),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 100, child: Image.network(image)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Name : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(name),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rating : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(rating),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Reason : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(reason),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  void goToForm(
    BuildContext context,
    String cardImage,
  ) async {
    review = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ReviewForm(
                  cardImage: cardImage,
                )));
    setState(() {
      name = review[0];
      rating = review[1];
      reason = review[2];
      image = review[3];
    });

    print(review);
  }
}
