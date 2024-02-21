import 'package:flutter/material.dart';

class MyDropDownScreen extends StatefulWidget {
  const MyDropDownScreen({super.key});

  @override
  MyDropDownScreenState createState() => MyDropDownScreenState();
}

class MyDropDownScreenState extends State<MyDropDownScreen> {
  String selectedValue = 'Options';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Dropdown'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Selected options'),
            const SizedBox(height: 20),
            
            DropdownButton<String>(
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  
                  selectedValue = newValue!;
                });
              },
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map((String value) {
                   
                return DropdownMenuItem<String>(
                  
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}


