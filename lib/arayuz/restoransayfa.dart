import 'package:flutter/material.dart';

class Restoranlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent.shade100,

      //yukarıdaki memü ve iconlar
      appBar: new AppBar(title: Text('Restoranlar'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          tooltip: 'sepet',
          //ANASAYFAYA GİDER
          onPressed: () => Navigator.pushNamed(context, "/Sepet"),
        ),
        IconButton(
          icon: Icon(Icons.search),
          tooltip: 'arama',
          onPressed: () => print("arama"),
        ),
      ]),

      //sayfa ortasındaki işlemler burda yapılır
      body: new Center(
          child: new Text(
        "Restoranların olduğu sayfa",
        textDirection: TextDirection.ltr,
      )),

      //alttaki menü barı
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.restaurant),
            title: new Text("Restoran"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.assessment,
            ),
            title: new Text("Degerlendirme"),
          ),
        ],
        onTap: (int i) => debugPrint("buton indeksi=$i"),
      ),

//sol üstteki açılır menü
      drawer: new Drawer(
        child: new ListTile(
          leading: Icon(Icons.change_history),
          title: Text('Change history'),
          onTap: () {
            // change app state...
            Navigator.pop(context); // close the drawer
          },
        ),
      ),
    );
  }
}