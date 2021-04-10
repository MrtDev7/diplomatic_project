import 'package:diplomatic/constants/assets.dart';
import 'package:diplomatic/constants/colors.dart';
import 'package:diplomatic/ui/items/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              onTap: () {},
              title: 'Abour US',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.calendarWeek,
                color: kprimaryColor,
              ),
              onTap: () {},
              title: 'Events',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.graduationCap,
                color: kprimaryColor,
              ),
              onTap: () {},
              title: 'Research and Studies',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.pen,
                color: kprimaryColor,
              ),
              onTap: () {},
              title: 'Educational services',
            ),
            renderDrawerItem(
              leading: FaIcon(
                FontAwesomeIcons.layerGroup,
                color: kprimaryColor,
              ),
              onTap: () {},
              title: 'Membership Request',
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'Partnership request',
              leading: FaIcon(
                FontAwesomeIcons.layerGroup,
                color: kprimaryColor,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'Diplomatic Platform',
              leading: FaIcon(
                FontAwesomeIcons.table,
                color: kprimaryColor,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'Contact US',
              leading: FaIcon(
                FontAwesomeIcons.solidAddressBook,
                color: kprimaryColor,
              ),
            ),
            Divider(),
            renderDrawerItem(
              onTap: () {},
              title: 'Facebook',
              leading: FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'youtube',
              leading: FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'twitter',
              leading: FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
              title: 'linkedin',
              leading: FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
              ),
            ),
            renderDrawerItem(
              onTap: () {},
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
