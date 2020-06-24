import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Container(
      width: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(218, 208, 238, 1),
            Color.fromRGBO(208, 233, 238, 1),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 80),
          Container(
            width: 210,
            height: 210,
            decoration: BoxDecoration(
              color: _theme.accentColor,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  _theme.accentColor,
                  Color.fromRGBO(184, 119, 254, 1),
                ],
              ),
            ),
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 100,
                color: _theme.primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 150,
            height: 15,
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 208, 238, 1),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(218, 208, 238, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 100,
            height: 15,
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: null,
              ),
              FloatingActionButton(
                onPressed: null,
                child: Icon(
                  Icons.play_arrow,
                ),
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: null,
              )
            ],
          )
        ],
      ),
    );
  }
}
