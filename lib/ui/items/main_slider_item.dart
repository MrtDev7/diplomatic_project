import '../../models/post.dart';
import 'package:flutter/material.dart';

class MainSliderItem extends StatelessWidget {
  final Post post;
  const MainSliderItem({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Card(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    post.imgUrl,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.black54,
                      Colors.transparent,
                    ])),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  post.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Container(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
