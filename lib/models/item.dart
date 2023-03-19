import 'package:flutter/material.dart';

class Item {
  String title;
  int id;
  String imageUrl;
  String description;

  Item({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  static List<Item> Items = [
    Item(
        title: "Supplement",
        imageUrl: "assets/images/image-1.jpg",
        description:
            "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius ipsum blanditiis, voluptas consectetur distinctio repellendus!",
        id: 1),
    Item(
        id: 2,
        title: "Meal",
        imageUrl: "assets/images/image-2.jpg",
        description:
            "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius ipsum blanditiis, voluptas consectetur distinctio repellendus!"),
    Item(
        id: 3,
        title: "Training",
        imageUrl: "assets/images/image-3.jpg",
        description:
            "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius ipsum blanditiis, voluptas consectetur distinctio repellendus!"),
    Item(
        id: 4,
        title: "Squad",
        imageUrl: "assets/images/image-4.jpg",
        description:
            "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius ipsum blanditiis, voluptas consectetur distinctio repellendus!"),
  ];
}
