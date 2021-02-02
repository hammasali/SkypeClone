import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/screens/chat_screen.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  List<String> names = [
    'Iftikhar',
    'Shama',
    'Hammas',
    'Haziq',
    'Bilal',
    'Momina',
    'Maira',
    'Aqsa',
    'Nimra',
    'Shahwar'
  ];

  List<String> text = [
    'hi how are you',
    'I am fine how are you btw',
    'What do you suppose',
    'I suppose nothing',
    'well well well we will meet someday soon and we will surely meet and great ',
    'yea i know you take care of me very well ',
    'hahahaha surely you are dumb as fuck',
    'no no no no what are you doing this is sparta',
    'I am iron man and who are you asshole',
    'I am inevitable'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            )),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              //In this case we are using circular Avatar and Container in a Row and Date Column in seprate row
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(
                              userName: names[index],
                            ))),
                child: Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 6.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      color: names[index] == 'Iftikhar' ||
                              names[index] == "Shama" ||
                              names[index] == "Aqsa"
                          ? Color(0xFFFFEFEE)
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          //Profile picture
                          CircleAvatar(
                            radius: 30.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          //Name and text message
                          Container(
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  text[index],
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blueGrey,
                                    fontWeight: names[index] == 'Iftikhar' ||
                                            names[index] == "Shama" ||
                                            names[index] == "Aqsa"
                                        ? FontWeight.bold
                                        : FontWeight.w300,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //Date and New
                      Column(
                        children: [
                          Text("5:10 P.M",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(
                            height: 6.0,
                          ),
                          names[index] == 'Iftikhar' ||
                                  names[index] == "Shama" ||
                                  names[index] == "Aqsa"
                              ? Container(
                                  alignment: Alignment.center,
                                  width: 40.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
