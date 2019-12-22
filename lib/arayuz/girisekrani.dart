import 'package:flutter/material.dart';

class GirisEkrani extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertState();
}

class AlertState extends State<GirisEkrani> {
  final sifreKontrol = TextEditingController();
  final yaziKontrol = TextEditingController();
  final genelKontrol = GlobalKey<FormState>();

  @override
  void dispose() {
    yaziKontrol.dispose();
    sifreKontrol.dispose();
    super.dispose();
  }

  void giris() {
    if (genelKontrol.currentState.validate()) {
      showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return AlertDialog(
              title: Text("Giriş"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("giriş başarılı"),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Tamam"),
                  onPressed: () => Navigator.pushNamed(context, "/Restoranlar"),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Giriş Ekranı"),
          centerTitle: true,
        ),
        body: Form(
            key: genelKontrol,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextFormField(
                    validator: (kullanici_adi) {
                      if (kullanici_adi.isEmpty)
                        return "lütfen kullanici adini giriniz";
                    },
                    controller: yaziKontrol,
                    decoration: InputDecoration(
                        hintText: "Lütfen kullanıcı adınızı giriniz"),
                  ),
                  TextFormField(
                    validator: (parola) {
                      if (parola.isEmpty) return "lütfen sifre giriniz";
                    },
                    controller: sifreKontrol,
                    decoration:
                        InputDecoration(hintText: "Lütfen şifre giriniz"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text("Giriş yap"),
                      onPressed: giris,
                    ),
                  ),
                ],
              ),
            )
            )
            );
  }
}