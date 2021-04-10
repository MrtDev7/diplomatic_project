import 'package:diplomatic/constants/assets.dart';
import 'package:diplomatic/constants/colors.dart';
import 'package:diplomatic/data/fake_data.dart';
import 'package:diplomatic/ui/items/drawer_item.dart';
import 'package:diplomatic/ui/screens/events/events_screen.dart';
import 'package:diplomatic/ui/screens/post/post_screen.dart';
import 'package:diplomatic/ui/screens/posts/posts_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Diplomatic Academy'),
              decoration: BoxDecoration(color: kprimaryColor),
              accountEmail: SizedBox.shrink(),
              currentAccountPicture: Image(
                image: AssetImage(mainLogo),
              ),
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.solidBuilding,
                color: kprimaryColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostsScreen(posts: aboutUS, title: 'About US');
                    },
                  ),
                );
              },
              title: 'Abour US',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.calendarWeek,
                color: kprimaryColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EventsScreen();
                    },
                  ),
                );
              },
              title: 'Events',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.graduationCap,
                color: kprimaryColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostScreen(post: researchAndStudiesPost);
                    },
                  ),
                );
              },
              title: 'Research and Studies',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.pen,
                color: kprimaryColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostScreen(post: educationalService);
                    },
                  ),
                );
              },
              title: 'Educational services',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.layerGroup,
                color: kprimaryColor,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostsScreen(
                        posts: memberShip,
                        title: 'Membership Request',
                      );
                    },
                  ),
                );
              },
              title: 'Membership Request',
            ),
            renderDrawerItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostScreen(
                        post: contactUS,
                      );
                    },
                  ),
                );
              },
              title: 'Contact US',
              leading: FaIcon(
                FontAwesomeIcons.solidAddressBook,
                color: kprimaryColor,
              ),
            ),
            Divider(),
            renderDrawerItem(
              onTap: () {
                _launchURL(Configs.facebookUrl);
              },
              title: 'Facebook',
              leading: FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {
                _launchURL(Configs.youtubeUrl);
              },
              title: 'youtube',
              leading: FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
            ),
            renderDrawerItem(
              onTap: () {
                _launchURL(Configs.twitterUrl);
              },
              title: 'twitter',
              leading: FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {
                _launchURL(Configs.linkedInUrl);
              },
              title: 'linkedin',
              leading: FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {
                _launchURL(Configs.instagramUrl);
              },
              title: 'instagram',
              leading: FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
