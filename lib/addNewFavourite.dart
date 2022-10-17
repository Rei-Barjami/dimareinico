import 'package:flutter/material.dart';

class AddNewFavourite extends StatelessWidget {
  const AddNewFavourite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child: Text("Favourites",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {}, icon: Icon(Icons.add_box_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
