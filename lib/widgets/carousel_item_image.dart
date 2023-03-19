import 'package:flutter/material.dart';

import '../models/item.dart';

class CarouselImageItem extends StatelessWidget {
  Item item;
  CarouselImageItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage(item.imageUrl),
          fit: BoxFit.cover,
        ),
        Container(
          height: _size.height,
          width: _size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black87, Colors.black45, Colors.transparent],
              stops: [0, 0.30, 1],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          top: _size.height / 2.5,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  item.description,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 227, 224, 224),
                      fontSize: 16.0),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
