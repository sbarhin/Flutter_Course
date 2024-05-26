import 'package:flutter/material.dart';

class UserMessage extends StatefulWidget {
  const UserMessage({Key? key}) : super(key: key);

  @override
  State<UserMessage> createState() => _UserMessageState();
}

class _UserMessageState extends State<UserMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  children: [ IconButton(
                    color: Colors.teal,
                    onPressed: () {},
                    icon: Icon(Icons.emoji_emotions_outlined),
                  ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message",
                          hintStyle: TextStyle(color: Colors.teal),
                        ),
                      ),
                    ),
                    IconButton(
                      color: Colors.teal,
                      onPressed: () {},
                      icon: Icon(Icons.link),
                    ),
                    IconButton(
                      color: Colors.teal,
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(Icons.mic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
