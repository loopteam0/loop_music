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
    // {'name': 'RDP Africa', 'country': 'Portugal'},
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
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search Station',
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black26,
                        BlendMode.multiply,
                      ),
                      image: AssetImage('assets/jazz.jpeg'),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Top Jazz stations',
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 20),
                      // RaisedButton(
                      //   elevation: 0,
                      //   onPressed: () {},
                      //   color: _theme.accentColor,
                      //   padding: EdgeInsets.all(22),
                      //   child: Text(
                      //     'VIEW STATIONS',
                      //     style: TextStyle(
                      //       fontSize: 13,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(50),
                      //   ),
                      // ),
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
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.all(5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Container(
          width: 250,
          padding: EdgeInsets.all(15),
          child: ListTile(
            leading: Icon(
              Icons.music_note,
              size: 40,
              color: _theme.accentColor,
            ),
            title: Text(
              radio['name'],
              maxLines: 1,
              style: _theme.textTheme.headline6.copyWith(fontSize: 15),
            ),
            subtitle: Text(
              radio['country'],
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
