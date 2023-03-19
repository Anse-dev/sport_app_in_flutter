import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/models/item.dart';

class DotCarouselWidget extends StatelessWidget {
  const DotCarouselWidget({
    Key? key,
    required CarouselController controller,
    required int current,
  })  : _controller = controller,
        _current = current,
        super(key: key);

  final CarouselController _controller;
  final int _current;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Positioned(
      bottom: _size.height / 4.5,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: Item.Items.map(
          (entry) => GestureDetector(
            onTap: () => _controller.animateToPage(entry.id),
            child: Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.white)
                      .withOpacity(_current == entry.id ? 0.9 : 0.4)),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
