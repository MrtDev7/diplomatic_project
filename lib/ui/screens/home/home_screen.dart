import 'package:diplomatic/data/fake_data.dart';
import 'package:diplomatic/models/category_model.dart';
import 'package:diplomatic/ui/items/category_item.dart';
import 'package:diplomatic/ui/screens/home/widgets/app_bar.dart';
import 'package:diplomatic/ui/screens/home/widgets/app_drawer.dart';
import 'package:diplomatic/ui/widgets/slider_header.dart';
import 'package:diplomatic/ui/widgets/sliders/main_slider.dart';
import 'package:diplomatic/ui/widgets/sliders/posts_slider.dart';
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
              renderSliderHeader('Upcoming Events'),
              PostsSlider(posts: mainSliderData),

              //

              renderSliderHeader('Academy Platform'),
              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/08/Membership-request-En-last-3-780x405.jpg',
                  title: 'Membership Request',
                  url: '',
                ),
              ),

              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2020/08/e-learning-training-school-online-learn-knowledge-1-780x500.jpg',
                  title: 'Diplomatic academy Platfom',
                  url: '',
                ),
              ),

              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/03/eco_bookshop1-1-2-1-780x500.jpg',
                  title: 'Diplomatic academy Library',
                  url: '',
                ),
              ),

              CategoryItem(
                category: Category(
                  imageUrl:
                      'https://diplomatic.ac/wp-content/uploads/2019/03/iStock-691796820-1-3-780x500.jpg',
                  title: 'Diplomatic academy Journal',
                  url: '',
                ),
              ),

              //
              renderSliderHeader('Previews Events'),
              PostsSlider(posts: mainSliderData),
            ],
          ),
        ),
      ),
    );
  }
}
