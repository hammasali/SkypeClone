import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/widgets/favourite_contacts.dart';
import 'package:skype_clone/widgets/recent_chats.dart';

import '../widgets/category_selecter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          iconSize: 25.0,
        ),
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: Column(
        children: <Widget>[
          CategorySelecter(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                children: [FavouriteContacts(), RecentChats()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
