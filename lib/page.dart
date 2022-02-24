import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> elements;
  const MyHomePage({required this.title, required this.elements});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on_rounded),
            onPressed: () => print("mapa"),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("Tapped"),
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (contx, index) {
          print(elements[index]);
          return Card(
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text("data i vreme"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(contx).primaryColorDark,
                      width: 3,
                    ),
                  ),
                  child: Text(
                    elements[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(contx).primaryColorLight,
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print("$index");
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
