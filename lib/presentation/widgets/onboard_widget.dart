import 'package:flutter/material.dart';
import 'package:vfsocial/presentation/screes/onboard_screen.dart';

Widget onBuildingItems(OnBoardModel model) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(
          child: Image(
            image: AssetImage('${model.image}'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          '${model.title}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          '${model.body}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
