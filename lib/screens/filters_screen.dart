import 'package:flutter/material.dart';
import 'package:my_meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const String routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
      {@required String title,
      @required String subtitle,
      @required bool value,
      @required void Function(bool) selectHandler}) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: selectHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meals selection.',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                      title: 'Gluten free',
                      subtitle: 'Only include gluten-free meals.',
                      value: _glutenFree,
                      selectHandler: (newValue) {
                        setState(() {
                          _glutenFree = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      title: 'Vegeterian',
                      subtitle: 'Only include vegetarian meals.',
                      value: _vegetarian,
                      selectHandler: (newValue) {
                        setState(() {
                          _vegetarian = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      title: 'Vegan',
                      subtitle: 'Only include vegan meals.',
                      value: _vegan,
                      selectHandler: (newValue) {
                        setState(() {
                          _vegan = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      title: 'Lactose free',
                      subtitle: 'Only include lactose free meals.',
                      value: _lactoseFree,
                      selectHandler: (newValue) {
                        setState(() {
                          _lactoseFree = newValue;
                        });
                      })
                ],
              ),
            )
          ],
        ));
  }
}
