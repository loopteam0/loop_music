import 'package:flutter/material.dart';
import 'package:loop_radio/widgets/menu.dart';
import 'package:loop_radio/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final radios = [
    {'name': 'FluxFm - Hot Radio', 'country': 'Germany'},
    {'name': 'laut.fm Sounds', 'country': 'Germany'},
    {'name': '107 WANS', 'country': 'USA'},
    {'name': 'This is Radio', 'country': 'Czech Rebublic'},
    {'name': 'BBC Radio 1', 'country': 'UK'},
    {'name': 'Ari Toronto', 'country': 'Canada'},
    {'name': '90s90s BoyGroup', 'country': 'Canada'},
    {'name': 'Classic Rock', 'country': 'USA'},
    {'name': 'Jazz Radio Blues', 'country': 'France'},
    {'name': 'RDP Africa', 'country': 'Portugal'},
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Scaffold(
      body: Row(
        children: [
          Menu(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsets.all(8),
                  color: Color.fromRGBO(241, 238, 237, 1),
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Loop Radio',
                        style: _theme.textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search Station...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/jazz.jpeg',
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            tileMode: TileMode.clamp,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(208, 233, 238, 0),
                              Color.fromRGBO(241, 238, 237, 1)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Jazz stations',
                              style: _theme.textTheme.headline2.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                              onPressed: () {},
                              child: Text(
                                'VIEW STATIONS',
                                style: _theme.textTheme.subtitle2.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              color: _theme.accentColor,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Wrap(
                  alignment: WrapAlignment.center,
                  children:
                      radios.map((e) => buildRadioCard(_theme, e)).toList(),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Player(),
        ],
      ),
    );
  }

  Card buildRadioCard(ThemeData _theme, Map radio) {
    return Card(
      color: Colors.grey[300],
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Color.fromRGBO(218, 208, 238, 1),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 250,
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                width: 50,
                child: Icon(
                  Icons.music_note,
                  size: 40,
                  color: _theme.accentColor,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    radio['name'],
                    maxLines: 1,
                    style: _theme.textTheme.headline6,
                  ),
                  SizedBox(height: 10),
                  Text(radio['country']),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
