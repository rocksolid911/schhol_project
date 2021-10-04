import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController editingController = TextEditingController();
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  var _currentSelectedValue;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          isFocused: true,
          decoration: InputDecoration(
            labelText: "Teacher",
            labelStyle: TextStyle(),
            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
            hintText: 'Please select expense',
            border: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(45.0),
              borderSide: BorderSide(color: Colors.pinkAccent,),

            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: Colors.pinkAccent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
          ),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              iconEnabledColor: Colors.pinkAccent,
              iconSize: 25,
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
