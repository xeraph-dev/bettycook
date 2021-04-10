import 'package:betsy_s_cookbook/src/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  final String onPressedSearch;
  final String title;

  const TipsPage(this.title, this.onPressedSearch, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).pushNamed(onPressedSearch);
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Text(this.title),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
