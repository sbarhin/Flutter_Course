import 'package:crush_course/Homepage.dart';
import 'package:crush_course/Messages.dart';
import 'package:crush_course/Settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.teal,
      )),
    );
  }
}
//going to pray

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = 0;

  void _navigate(index) {
    setState(() {
      _selected = index;
    });
  }

  final List<Widget> _pages = [
    const Homepage(), // home
    Center(
      child: Text('notifications'),
    ), // settings
    const UserSettings(), // user
    const UserMessage(), // message
    Center(
      child: Text('profile'),
    ), // settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.settings,
            color: _selected == 2 ? Colors.teal : Colors.black),
        onPressed: () => _navigate(2),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_selected],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => _navigate(0),
                icon: Icon(Icons.home,
                    color: _selected == 0 ? Colors.teal : Colors.black),
              ),
              IconButton(
                onPressed: () => _navigate(1),
                style: ButtonStyle( ),
                icon: Icon(Icons.notifications,
                    color: _selected == 1 ? Colors.teal : Colors.black),
              ),
              IconButton(
                onPressed: () => _navigate(3),
                icon: Icon(Icons.message,
                    color: _selected == 3 ? Colors.teal : Colors.black),
              ),
              IconButton(
                onPressed: () => _navigate(4),
                icon: Icon(Icons.person,
                    color: _selected == 4 ? Colors.teal : Colors.black),
              ),
            ], //what happens to the setected pages/ kol
          ),
        ),
      ),
    );
  }
}

// TODO:
// if a page is active, the color of the icon should be blue
// and also the label should show under
// y
