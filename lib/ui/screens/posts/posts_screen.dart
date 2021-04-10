import 'package:diplomatic/models/post.dart';
import 'package:diplomatic/ui/items/list_post_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  final String title;
  final List<Post> posts;
  const PostsScreen({
    Key key,
    @required this.posts,
    @required this.title,
  }) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: widget.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListPostItem(post: widget.posts[index]);
        },
      ),
    );
  }
}
