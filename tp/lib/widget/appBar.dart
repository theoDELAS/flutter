import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.euro_symbol,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/total');
              },
            ),
          ),
        ],
      ),
    );
  }
}
