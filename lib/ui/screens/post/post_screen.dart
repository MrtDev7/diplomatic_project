import 'package:diplomatic/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:flutter_html/style.dart';
import 'package:url_launcher/url_launcher.dart';

class PostScreen extends StatefulWidget {
  final Post post;
  PostScreen({Key key, @required this.post}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.post.title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Html(
                data: widget.post.content,
                style: {
                  "h1": Style(
                    textAlign: TextAlign.center,
                  ),

                  "figure": Style(
                    width: MediaQuery.of(context).size.width,
                  ),
                  "img": Style(
                    width: MediaQuery.of(context).size.width,
                  ),

                  // some other granular customizations are also possible
                },
                onLinkTap: (url) {
                  _launchURL(url);
                },
                onImageTap: (String url) {
                  _launchURL(url);
                },
                customRender: {
                  "img": (RenderContext context, Widget child,
                      Map<String, dynamic> attributes, _) {
                    print(attributes);

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Image.network(
                        attributes['src'],
                        width: 500,
                      ),
                    );
                  },
                }),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
