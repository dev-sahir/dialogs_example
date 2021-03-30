import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:learn_flutter/Widgets/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LearnFlutter(),
    );
  }
}

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    buildCustomDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              // backgroundColor: Colors.indigo,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 200.0,
                    width: 180.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Sahir Khan',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(child: Icon(Icons.phone)),
                            CircleAvatar(child: Icon(Icons.video_call)),
                            CircleAvatar(child: Icon(Icons.chat_rounded)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -50,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        brightness: Brightness.dark,
        shadowColor: Colors.indigo,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text('Flutter'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180.0,
              child: ElevatedButton(
                child: Text(
                  'Alert Dialog',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Icon(Icons.logout, size: 50.0),
                          content: Text(
                            "Do you want to exit?",
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            TextButton(
                              child: Text('Yes'),
                              onPressed: () {},
                            ),
                            SizedBox(width: 120.0),
                            TextButton(
                              child: Text('No'),
                              onPressed: () {},
                            ),
                          ],
                        );
                      });
                },
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 180.0,
              child: ElevatedButton(
                child: Text(
                  'Simple Dialog',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text('Pick Image..'),
                          children: [
                            SimpleDialogOption(
                              child: Row(
                                children: [
                                  Icon(Icons.camera_alt),
                                  SizedBox(width: 10.0),
                                  Text('Camera')
                                ],
                              ),
                            ),
                            SimpleDialogOption(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(Icons.photo),
                                  SizedBox(width: 10.0),
                                  Text('Gallery')
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 180.0,
              child: ElevatedButton(
                child: Text(
                  'Custom Dialog',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  buildCustomDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
