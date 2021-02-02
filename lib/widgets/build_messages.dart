import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildMessages extends StatefulWidget {
  @override
  _BuildMessagesState createState() => _BuildMessagesState();
}

class _BuildMessagesState extends State<BuildMessages> {
  bool isMe;
  List<String> text = [
    'hi how are you',
    'I am fine how are you btw.',
    'What do you suppose',
    'I suppose nothing.',
    'well well well we will meet someday soon and we will surely meet and great ',
    'yea i know you take care of me very well.',
    'hahahaha surely pretty cool and i know you also know this very well',
    'no no no no what are you doing this is sparta',
    'I am iron man and who are YOU.',
    'I am inevitable'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
            reverse: true,
            itemCount: text.length,
            itemBuilder: (BuildContext context, int index) {
              isMe = text[index].contains('.');
              return Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    margin: isMe
                        ? EdgeInsets.only(
                            top: 8.0,
                            bottom: 8.0,
                            left: 80.0,
                          )
                        : EdgeInsets.only(top: 8.0, bottom: 8.0),
                    decoration: BoxDecoration(
                        color: isMe
                            ? Theme.of(context).accentColor
                            : Color(0xFFFFEFEE),
                        borderRadius: isMe
                            ? BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0))
                            : BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 2}:50 A.M.',
                          style: TextStyle(color: Colors.black38),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '${text[index]}',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  !isMe
                      ? Icon(
                          text[index] == text[2] || text[index] == text[6]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              text[index] == text[2] || text[index] == text[6]
                                  ? Colors.red
                                  : Colors.blueGrey,
                          size: 20.0,
                        )
                      : Expanded(
                          child: Container(
                          color: Theme.of(context).accentColor,
                        ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
