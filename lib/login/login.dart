import 'package:flutter/material.dart';


class Login extends StatefulWidget{
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login>{
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    this._name.text = ''; // 设置初始值
  }

  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
        body: new Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: new ListView(
            children: <Widget>[
              Container(
                height: 160,
                margin: new EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icon.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text('Karl.Zheng', style: new TextStyle(color: Colors.white, fontSize: 22, decoration: TextDecoration.none),),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              TextField(
                decoration: new InputDecoration(
                    hintText: 'username',
                    contentPadding: new EdgeInsets.all(10)
                ),
                onChanged: (value) {
                  this.setState((){
                    this._name.text = value;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              new TextField(
                obscureText: true,
                decoration: new InputDecoration(
                    hintText: 'password',
                    contentPadding: new EdgeInsets.all(10)
                ),
                onChanged: (value) {
                  this.setState((){
                    this._password.text = value;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),

              new RaisedButton(
                  onPressed: () {
                      print(this._name.text);
                      print(this._password.text);
                  },
                  child: new Text('按钮')
              ),

            ],
          ),
        ),
    );
  }
}

