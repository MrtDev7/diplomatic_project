import 'package:diplomatic/data/fake_data.dart';
import 'package:diplomatic/ui/screens/posts/posts_screen.dart';
import 'package:diplomatic/ui/widgets/slider_header.dart';
import 'package:diplomatic/ui/widgets/sliders/posts_slider.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  EventsScreen({Key key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            renderSliderHeader(
                title: 'Upcoming Events',
                onMoreClicked: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PostsScreen(
                            posts: upComingEvents, title: 'Upcoming Events');
                      },
                    ),
                  );
                }),
            PostsSlider(posts: upComingEvents),
            renderSliderHeader(
                title: 'Previews Events',
                onMoreClicked: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PostsScreen(
                            posts: previewsEvents, title: 'Previews Events');
                      },
                    ),
                  );
                }),
            PostsSlider(posts: previewsEvents),
          ],
        ),
      ),
    );
  }
}
