import 'package:flutter/material.dart';

class RestoranUyeOl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RestoranUyeState();
}

class RestoranUyeState extends State<RestoranUyeOl> {
  //Restaurant
 

  void uyeOl()
  {
    print("Üye olundu.");
  }

  final adController = new TextEditingController();
  String dropdownValue = 'Şehir Seç..';
  String dropdownValue2 = "İlçe Seç..";
  String dropdownValue3 ='Tür Seçiniz..';
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    adController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.orange.shade800,
            height: 90.0,
            width: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 20.0, right: 2.5),
                  child: CircleAvatar(
                    backgroundImage: (NetworkImage(
                        "http://webrazzi.com/wp-content/uploads/2016/09/ulak-kurye-logo.png")),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 20.0, left: 2.5),
                  child: new Text(
                    "KUR-YE",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: new Text("RESTORAN ÜYE OL",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ),
          
          //ad - soyad - şehir - ilçe - adres - email - şifre - şifre tekrarı
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 150.0),
            child: SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new TextFormField(
                    validator: (kullanici_adi) {
                      if (kullanici_adi.isEmpty)
                        return "lütfen kullanici adini giriniz";
                    },
                    controller: adController,
                    decoration: new InputDecoration(
                      hintText: "Restoran Adınızı Giriniz..",
                      border: InputBorder.none,
                    ),
                    autofocus: true,
                  ),
                   DropdownButton<String>(
                    value: dropdownValue3,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey.shade600),
                    underline: Container(
                      height: 1.5,
                      color: Colors.orange.shade800,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Tür Seçiniz..',
                      'Tatlıcı',
                      'Genel Yemekler',
                      'Ev emekleri',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  new TextFormField(
                    
                    decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.email,
                        color: Colors.orange.shade800,
                      ),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.lock,
                        color: Colors.orange.shade800,
                      ),
                      hintText: "Şifre",
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.lock,
                        color: Colors.orange.shade800,
                      ),
                      hintText: "Şifreyi Tekrar Girin",
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey.shade600),
                    underline: Container(
                      height: 1.5,
                      color: Colors.orange.shade800,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Şehir Seç..',
                      'İstanbul',
                      'Ankara',
                      'İzmir'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey.shade600),
                    underline: Container(
                      height: 1.5,
                      color: Colors.orange.shade800,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue2 = newValue;
                      });
                    },
                    items: <String>[
                      'İlçe Seç..',
                      'Küçükçekmece',
                      'Halkalı',
                      'Kadıköy',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  new TextFormField(
                    
                    decoration: new InputDecoration(
                      
                      hintText: "Adres Giriniz..",
                      border: InputBorder.none,
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(left: 160,top: 10),
                    child: FlatButton(
                      child: Text(
                        "ÜYE OL",
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color:Colors.orange.shade800,
                      onPressed:uyeOl,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}

/*  appBar: AppBar(
        title: Text("KUR-YE"),
        leading: CircleAvatar(
          backgroundImage: (NetworkImage(
              "http://webrazzi.com/wp-content/uploads/2016/09/ulak-kurye-logo.png")),
        ),
        backgroundColor: Colors.orange.shade800,
        centerTitle: true,
      ),*/
