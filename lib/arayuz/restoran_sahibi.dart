import 'package:flutter/material.dart';

class RestoranSahibi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ResaState();
}

class ResaState extends State<RestoranSahibi> {
  final fiyatKontrol = TextEditingController();
  final isimKontrol = TextEditingController();
  final genelKontrol = GlobalKey<FormState>();
  @override
  void dispose() {
    isimKontrol.dispose();
    fiyatKontrol.dispose();
    super.dispose();
  }
  void ekle() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text("EKLEME"),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                TextFormField(
                    validator: (isim) {
                      if (isim.isEmpty)
                        return "lütfen ürün ismini giriniz";
                    },
                    controller: isimKontrol,
                    decoration: InputDecoration(
                        hintText: "Lütfen ürün ismini giriniz"),
                  ),
                TextFormField(
                    validator: (fiyat) {
                      if (fiyat.isEmpty) return "lütfen fiyat giriniz";
                    },
                    controller: fiyatKontrol,
                    decoration:
                        InputDecoration(hintText: "Lütfen fiyat giriniz"),
                  ),
                ],
            )),
            actions: <Widget>[
              FlatButton(
                child: Text("Basarılı"),
                  onPressed: () {
              Navigator.of(context).pop();
            },
              ),
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.greenAccent.shade100,

      //yukarıdaki memü ve iconlar
      appBar: new AppBar(
        title: Text('KUR-YE'),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: (NetworkImage(
              "http://webrazzi.com/wp-content/uploads/2016/09/ulak-kurye-logo.png")),
        ),
        backgroundColor: Colors.orange.shade800,
      ),

      //sayfa ortasındaki işlemler burda yapılır
      body: Form(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                alignment: Alignment.topLeft,
                color: Colors.orange.shade800,
                child: new Text("HOŞGELDİNİZ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
              ),
              new Container(
                alignment: Alignment.center,
                child: new Text("Menü",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 25.0, color: Colors.orange.shade800)),
              ),
              new Row(
                children: <Widget>[
                  const Text('Yemekler',
                      style: TextStyle(fontSize: 25.0, color: Colors.orange)),
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    tooltip: 'Ekle',
                    onPressed: () => ekle(),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Et Dürüm                     10 TL   ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Pilav Üstü                    10 TL  ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Tavuk Dürüm               10 TL  ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('İçecekler',
                      style: TextStyle(fontSize: 25.0, color: Colors.orange)),
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    tooltip: 'Ekle',
                    onPressed: () => ekle(),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Ayran                       10 TL      ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Fanta                       10 TL      ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  const Text('Kola                         10 TL      ',
                      style: TextStyle(fontSize: 25.0, color: Colors.black)),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                  IconButton(
                    icon: Icon(Icons.autorenew),
                    tooltip: 'Ekle',
                    onPressed: () => print("K"),
                    color: Colors.red,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
