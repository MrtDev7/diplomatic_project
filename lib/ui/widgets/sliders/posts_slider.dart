import 'package:diplomatic/models/post.dart';
import 'package:diplomatic/ui/items/post_slider_item.dart';
import 'package:flutter/material.dart';

class PostsSlider extends StatelessWidget {
  final List<Post> posts;

  const PostsSlider({Key key, @required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostSliderItem(post: posts[index]);
        },
      ),
    );
  }
}
