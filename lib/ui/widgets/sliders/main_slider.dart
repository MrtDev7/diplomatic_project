import 'package:diplomatic/constants/colors.dart';
import 'package:diplomatic/models/post.dart';
import 'package:diplomatic/ui/items/main_slider_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainSlider extends StatelessWidget {
  final List<Post> posts;
  const MainSlider({Key key, @required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView(
            controller: controller,
            children: List.generate(
                posts.length, (index) => MainSliderItem(post: posts[index])),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 15,
          ),
          child: SmoothPageIndicator(
            controller: controller,
            count: posts.length,
            effect: WormEffect(
              activeDotColor: kprimaryColor,
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
        ),
      ],
    );
  }
}
