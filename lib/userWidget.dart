import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj_test/addNewFavourite.dart';
import 'package:proj_test/favouriteWidget.dart';
import 'package:proj_test/loadingScreen.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _sizeW = MediaQuery.of(context).size; //screen height and width

    final List<Widget> favouriteElements = [
      AddNewFavourite(),
      FavouriteWidget(title:"favourite1"),
      FavouriteWidget(title: "favourite2"),
      FavouriteWidget(title: "favourite3"),
      FavouriteWidget(title: "favourite5"),
      FavouriteWidget(title: "favourite6"),
      FavouriteWidget(title: "favourite7"),
      FavouriteWidget(title: "favourite8"),

    ];

    return Stack(
        children : [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: _sizeW.height*0.673,
            child: Container(
                alignment: Alignment.center,
                child: Text("NOME COGNOME",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
          ),
          Positioned(
            top: _sizeW.height*0.15,
            left: 0,
            right: 0,
            bottom: _sizeW.height*0.20,
            child: Container(
                  child: Center(
                    child: ListView(
                      children: favouriteElements,
                    ),
                  ),
                ),
          ),
          Positioned(
            top: _sizeW.height*0.65,
            left: _sizeW.width*0.15,
            right: _sizeW.width*0.15,
            bottom: _sizeW.height*0.05,
              child : CupertinoButton(

                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Loading()),
                  );
                },
                child: Text("Cambia Tema"),
                color: CupertinoColors.black,
                padding: EdgeInsets.all(10),
              )
            ),
            ],
    );
  }
}
