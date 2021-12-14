// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vfsocial/presentation/component/components.dart';
import 'package:vfsocial/presentation/screes/login_screen.dart';
import 'package:vfsocial/presentation/widgets/onboard_widget.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  var pageContorller = PageController();
  bool isLastPage = false;

  List<OnBoardModel> Boarding = [
    OnBoardModel(
        image: "assets/images/1.jpg",
        body: "On Board1",
        title: "on borad title1"),
    OnBoardModel(
        image: "assets/images/2.jpg",
        body: "On Board1",
        title: "on borad title2"),
    OnBoardModel(
        image: "assets/images/3.png",
        body: "On Board1",
        title: "on borad title3"),
    OnBoardModel(
        image: "assets/images/4.png",
        body: "On Board1",
        title: "on borad title4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  navigateAndFinish(context, ShopLoginScreen());
                },
                child: Text("Skip")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageContorller,
                  onPageChanged: (int index) {
                    if (index == Boarding.length - 1) {
                      setState(() {
                        isLastPage = true;
                      });
                    } else
                      setState(() {
                        isLastPage = false;
                      });
                  },
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      onBuildingItems(Boarding[index]),
                  itemCount: Boarding.length,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: pageContorller,
                    count: Boarding.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      spacing: 5,
                      dotWidth: 10,
                      expansionFactor: 4,
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (isLastPage) {
                        navigateAndFinish(context, ShopLoginScreen());
                      } else {
                        pageContorller.nextPage(
                            duration: Duration(microseconds: 700),
                            curve: Curves.bounceInOut);
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class OnBoardModel {
  String? image;
  String? title;
  String? body;

  OnBoardModel({
    required this.image,
    required this.body,
    required this.title,
  });
}
