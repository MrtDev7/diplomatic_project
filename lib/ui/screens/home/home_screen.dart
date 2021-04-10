import 'package:diplomatic/data/fake_data.dart';
import 'package:diplomatic/models/category_model.dart';
import 'package:diplomatic/ui/items/category_item.dart';
import 'package:diplomatic/ui/screens/home/widgets/app_bar.dart';
import 'package:diplomatic/ui/screens/home/widgets/app_drawer.dart';
import 'package:diplomatic/ui/screens/posts/posts_screen.dart';
import 'package:diplomatic/ui/widgets/slider_header.dart';
import 'package:diplomatic/ui/widgets/sliders/main_slider.dart';
import 'package:diplomatic/ui/widgets/sliders/posts_slider.dart';
import 'package:diplomatic/utils/helpers/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      appBar: homeAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainSlider(posts: mainSliderData),
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

              SizedBox(
                height: 25,
              ),
              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/08/Membership-request-En-last-3-780x405.jpg',
                  title: 'Membership Request',
                  url: '',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PostsScreen(
                            posts: memberShip, title: 'Membership Request');
                      },
                    ),
                  );
                },
              ),
              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2020/08/e-learning-training-school-online-learn-knowledge-1-780x500.jpg',
                  title: 'Diplomatic academy Platfom',
                  url: '',
                ),
                onTap: () {
                  launchURL('http://journal.diplomatic.ac/');
                },
              ),

              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/03/eco_bookshop1-1-2-1-780x500.jpg',
                  title: 'Diplomatic academy Library',
                  url: '',
                ),
                onTap: () {
                  launchURL('http://library.diplomatic.ac/');
                },
              ),

              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/03/iStock-691796820-1-3-780x500.jpg',
                  title: 'Diplomatic academy Journal',
                  url: '',
                ),
                onTap: () {
                  launchURL('http://journal.diplomatic.ac/');
                },
              ),

              //
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
                },
              ),
              PostsSlider(posts: previewsEvents),
            ],
          ),
        ),
      ),
    );
  }
}
