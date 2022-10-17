import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj_test/addNewFavourite.dart';
import 'package:proj_test/favouriteWidget.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}
  class _FilterWidgetState extends State<FilterWidget>{
    bool _sp1 = false;
    bool _sp2 = false;
    bool _sp3 = false;
    bool _sp4 = false;
    bool _sp5 = false;
    bool _sp6 = false;
    bool _sp7 = false;
    bool _sp8 = false;
    bool _sp9 = false;
  @override
  Widget build(BuildContext context) {



    final _size = MediaQuery.of(context).size; //screen height and width
    return Scaffold(
    appBar: PreferredSize(
        child : AppBar(
          backgroundColor: Colors.black,
          title: const Text("Filters",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ) , // here the desired height
        preferredSize: Size.fromHeight(_size.height*0.10),
        ),
      body: Column(
        children: [
          Container(
            width: _size.width*0.9,
            height: _size.height*0.07,
            alignment: Alignment.centerLeft,
            child: Text("Sports",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp1 = !_sp1;
                    });
                  },
                  child: Text("Sport1"),
                  color: !_sp1 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp2 = !_sp2;
                    });
                  },
                  child: Text("Sport2"),
                  color: !_sp2 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),

              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp3 = !_sp3;
                    });
                  },
                  child: Text("Sport3"),
                  color: !_sp3 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
          Container(
            height: _size.height*0.005,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp4 = !_sp4;
                    });
                  },
                  child: Text("Sport4"),
                  color: !_sp4 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp5 = !_sp5;
                    });
                  },
                  child: Text("Sport5"),
                  color: !_sp5 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp6 = !_sp6;
                    });
                  },
                  child: Text("Sport6"),
                  color: !_sp6 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
          Container(
            height: _size.height*0.005,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp7 = !_sp7;
                    });
                  },
                  child: Text("Sport7"),
                  color: !_sp7 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp8 = !_sp8;
                    });
                  },
                  child: Text("Sport8"),
                  color: !_sp8 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: _size.width*0.265,
                height: _size.width*0.1,
                child: CupertinoButton(
                  onPressed: ()
                  {
                    setState(() {
                      _sp9 = !_sp9;
                    });
                  },
                  child: Text("Sport9"),
                  color: !_sp9 ? CupertinoColors.inactiveGray : CupertinoColors.activeOrange,
                  padding: EdgeInsets.all(10),
                ),
              ),
            ],
          ),
          Container(
            width: _size.width*0.9,
            height: _size.height*0.07,
            alignment: Alignment.centerLeft,
            child: Text("Leagues",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

  }

}
