import 'package:flutter/material.dart';
import 'screens/chatscreen.dart';
import 'screens/feedscreen.dart';
import 'screens/myprofilescreen.dart';
import 'screens/addscreen.dart';
import 'screens/notificationscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = FeedScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 50,
                          onPressed: () {
                            setState(() {
                              currentScreen = FeedScreen();
                              currentTab = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dashboard,
                                color: currentTab == 0
                                    ? Colors.green
                                    : Colors.grey,
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 50,
                          onPressed: () {
                            setState(() {
                              currentScreen = ChatScreen();
                              currentTab = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat,
                                color: currentTab == 1
                                    ? Colors.green
                                    : Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 50,
                          onPressed: () {
                            setState(() {
                              currentScreen = NotificationScreen();
                              currentTab = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dashboard,
                                color: currentTab == 2
                                    ? Colors.green
                                    : Colors.grey,
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 50,
                          onPressed: () {
                            setState(() {
                              currentScreen = const MyProfileScreen();
                              currentTab = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: currentTab == 3
                                    ? Colors.green
                                    : Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ]))),
    );
  }
}
