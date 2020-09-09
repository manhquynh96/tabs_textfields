import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Fixed Tabs'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.green,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
                Tab(text: 'CATS', icon: Icon(Icons.music_note)),
                Tab(text: 'BIRDS', icon: Icon(Icons.search)),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                TextFormField(
                  initialValue: 'Input text',
                  maxLength: 20,
                  decoration: InputDecoration(
                    icon: Icon(Icons.favorite),
                    labelText: 'Label text',
                    helperText: 'Helper text',
                    suffixIcon: Icon(Icons.check_circle),
                  ),
                ),
                TextFormField(
                  initialValue: 'Input Text',
                  maxLength: 20,
                  decoration: InputDecoration(
                    icon: Icon(Icons.fastfood),
                    labelText: 'Label Text',
                    errorText: 'Error message',
                    suffixIcon: Icon(Icons.error),
                  ),
                ),
              ],
            ),
            Center(child: Text('CATS')),
            Center(child: Text('BIRDS')),
          ]),
        ),
      ),
    );
  }
}
