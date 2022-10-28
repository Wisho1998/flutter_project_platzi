import 'package:flutter/cupertino.dart';
import 'package:flutter_project_platzi/review.dart';

class ReviewList extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    String userPathImageReview = "assets/img/bullpink.jpeg";
    String userNameReview = "Varuna Yasas";
    String userDetailReview = "1 review · 5 photos";
    String userCommentReview = "There is an amazing place in Sri lanka";
    double starsReview = 5;

    List<Widget> reviewList = List.filled(
        5,
        Review(
          path: userPathImageReview,
          name: userNameReview,
          details: userDetailReview,
          comment: userCommentReview,
          stars: starsReview,
        ));
    return Column(
      children: reviewList,
    );
  }
}
