import 'package:flutter/material.dart';
import 'package:loop_radio/services/services.dart';
import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NavigationRailProvider _rail = Provider.of<NavigationRailProvider>(context);
    ThemeData _theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: NavigationRail(
        destinations: [
          NavigationRailDestination(
            icon: Icon(Icons.library_add),
            label: Text('My Library'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.radio),
            label: Text('Recently Viewed'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.flag),
            label: Text('Countries'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.language),
            label: Text('Languages'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.tag_faces),
            label: Text('Tags'),
          ),
        ],
        elevation: 1,
        extended: _rail.exteded,
        leading: IconButton(
          icon: _rail.exteded ? Icon(Icons.close) : Icon(Icons.menu),
          onPressed: () {
            _rail.exteded = !_rail.exteded;
          },
        ),
        backgroundColor: Color.fromRGBO(208, 233, 238, 1),
        selectedIndex: _rail.seletedIndex,
        onDestinationSelected: (int index) {
          _rail.seletedIndex = index;
        },
        selectedIconTheme: IconThemeData(
          color: _theme.accentColor,
          size: 30,
        ),
        selectedLabelTextStyle: _theme.textTheme.headline6.copyWith(
          color: _theme.accentColor,
        ),
      ),
    );
  }
}
