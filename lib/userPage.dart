import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:proj_test/userWidget.dart';
import 'package:proj_test/widgets/filterPage.dart';

class UserPageWidget extends StatefulWidget {
  const UserPageWidget({Key? key}) : super(key: key);
  @override
  State<UserPageWidget> createState() => _UserPageWidgetState();
}

class _UserPageWidgetState extends State<UserPageWidget> {
  GoogleSignInAccount ? currentUser;
  int _selectedIndex = 0;
  String? name = FirebaseAuth.instance.currentUser!.displayName;


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Live Page',
      style: optionStyle,
    ),
    Text(
      'Events Page',
      style: optionStyle,
    ),
    FilterWidget(),
    UserWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String s;
    if (name != null)
      s = name.toString();
    else
      s = "ciao";

    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        child : AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 20,
                child: Text(s,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  height: _size.height*0.073,
                  width: _size.width*0.073,
                  child : Image.asset('assets/user.png',fit: BoxFit.contain),
                ),
              ),
            ],
          ) ,

        ) , // here the desired height
        preferredSize: Size.fromHeight(_size.height*0.10),
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Events',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: 'Notify',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
