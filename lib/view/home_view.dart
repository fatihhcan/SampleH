import 'package:deneme/model/users.dart';
import 'package:deneme/services/service.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: FutureBuilder<Question>(
                  future: getPost(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done)
                      return Text('Title from Post JSON : ${snapshot.data}');
                    else
                      return CircularProgressIndicator();
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
