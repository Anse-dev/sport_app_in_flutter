import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/models/item.dart';
import 'package:sport_app/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _AppBar(_size),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      height: _size.height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: Item.Items.map((item) => CarouselImageItem(item: item))
                      .toList(),
                ),
                DotCarouselWidget(controller: _controller, current: _current),
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _ButtonRounded(iswhite: false, text: "Log In "),
                      const SizedBox(
                        width: 40.0,
                      ),
                      _ButtonRounded(iswhite: true, text: "Sign Up"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  PreferredSize _AppBar(Size _size) {
    return PreferredSize(
      preferredSize: Size(_size.width, 180.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "V",
                style: TextStyle(
                    fontSize: 38.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Row(
                    children: const [
                      Text(
                        "SKIP",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _ButtonRounded({required bool iswhite, required String text}) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              side: const BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              borderRadius: BorderRadius.circular(20.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
            iswhite ? Colors.white : Colors.transparent),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Text(
          text,
          style: TextStyle(color: iswhite ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
