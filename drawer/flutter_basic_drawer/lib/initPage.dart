import 'package:flutter/material.dart';
import 'package:flutter_basic_drawer/pages/contactPage.dart';
import 'package:flutter_basic_drawer/pages/dashboardPage.dart';
import 'package:flutter_basic_drawer/pages/eventsPage.dart';
import 'package:flutter_basic_drawer/pages/notesPage.dart';
import 'package:flutter_basic_drawer/pages/notificationsPage.dart';
import 'package:flutter_basic_drawer/pages/privacypolicyPage.dart';
import 'package:flutter_basic_drawer/pages/sendfeedbackPage.dart';
import 'package:flutter_basic_drawer/pages/settingsPage.dart';
import 'drawer_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {

    var container;

    if (currentPage == DrawerSections.dashboard) {
      container = DashBoardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedBackPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Drawer Example"),
        centerTitle: true,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeadDrawer(),
                MyDrawerList(),
              ],
            ),
          )
        ),
      ),
    );
  }

 Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          menuItems(1,"Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSections.dashboard ? true : false),

          menuItems(2,"Contacts", Icons.contacts,
              currentPage == DrawerSections.dashboard ? true : false),

          menuItems(3,"Events", Icons.event,
              currentPage == DrawerSections.dashboard ? true : false),

          menuItems(4,"Notes", Icons.notes,
              currentPage == DrawerSections.dashboard ? true : false),

          Divider(),

          menuItems(5,"Settings", Icons.settings,
              currentPage == DrawerSections.dashboard ? true : false),

          menuItems(6,"Notifications", Icons.notifications,
              currentPage == DrawerSections.dashboard ? true : false),

          Divider(),

          menuItems(7,"Privacy & Policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.dashboard ? true : false),

          menuItems(8,"Send Feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
        ],
      ),
    );
 }

 Widget menuItems(int id, String title, IconData icon, bool selected){
    return Material(
      color: selected ? Colors.grey[300]: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
 }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}

