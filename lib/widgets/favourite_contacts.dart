import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skype_clone/screens/chat_screen.dart';

class FavouriteContacts extends StatelessWidget {
  List<String> favourites = ['Iftikhar','Shama','Hammas','Haziq','Bilal','Momina'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favourites Contact",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    letterSpacing: 1.0
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  size: 25.0,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          SizedBox(height: 12.0,),
          Container(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
            itemCount: favourites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          userName: favourites[index],
                        ))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(favourites[index],style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0
                      ),),
                    ],
                  ),
                ),
              );
            },

            ),
          )
        ],
      ),
    );
  }
}
