import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/widgets/build_messages.dart';

class ChatScreen extends StatefulWidget {
  var userName;

  ChatScreen({this.userName});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "${widget.userName}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.more_horiz), iconSize: 25.0, onPressed: () => {})
        ],
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            BuildMessages(),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            border:
                Border.all(width: 1.5, color: Theme.of(context).primaryColor)),
        child: Row(
          children: [
            Icon(
              Icons.photo,
              size: 25.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
                child: TextField(

              cursorColor: Theme.of(context).primaryColor,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(
                hintText: "Send a message...",
              ),
            )),
            Icon(
              Icons.send,
              size: 30.0,
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
