import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            // onChanged: _onSearchChanged,
            decoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Enter search term',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text('Searching for: HelloSearch'),
        ),
      ],
    );
  }
}
