import 'package:flutter/material.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            child: Text(this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {}, icon: Icon(Icons.delete),
            ),
          ),
        ),
      ],
    );
  }
}
