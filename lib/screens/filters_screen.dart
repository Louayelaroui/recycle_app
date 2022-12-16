import 'package:flutter/material.dart';


class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool Plastic = false;
  bool Wood = false;
  bool WEEE = false;
  bool Glass = false;

  @override
  initState() {
    Plastic = widget.currentFilters['Plastic']!;
    Glass = widget.currentFilters['Glass']!;
    Wood = widget.currentFilters['Wood']!;
    WEEE = widget.currentFilters['WEEE']!;
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'Plastic': Plastic,
                'Glass': Glass,
                'WEEE': WEEE,
                'Wood': Wood,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Plastic',
                  'Only include gluten-free meals.',
                  Plastic,
                  (newValue) {
                    setState(
                      () {
                        Plastic = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Glass',
                  'Only include lactose-free meals.',
                  Glass,
                  (newValue) {
                    setState(
                      () {
                        Glass = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Wood',
                  'Only include vegetarian meals.',
                  Wood,
                  (newValue) {
                    setState(
                      () {
                        Wood = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'WEEE',
                  'Only include vegan meals.',
                  WEEE,
                  (newValue) {
                    setState(
                      () {
                        WEEE = newValue;
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
