import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class LoginRegisterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegisterState();
  }
}

class _LoginRegisterState extends State<LoginRegisterPage> {
  void validAndSave() {}
  void movetoRegister() {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: Center(child: new Text("Flutter Blog App"))),
        body: new Container(
          margin: EdgeInsets.all(15.0),
          child: new Form(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInputs() + CreateButtons(),
            ),
          ),
        ));
  }

  List<Widget> createInputs() {
    return [
      SizedBox(
        height: 10.0,
      ),
      logo(),
      SizedBox(height: 20.0),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
      ),
      SizedBox(
        height: 10.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password '),
      ),
      SizedBox(
        height: 20.0,
      ),
    ];
  }

  Widget logo() {
    return new Hero(
      tag: 'hero',
      child: new CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 110.0,
        child: Image.asset('images/app_logo.png'),
      ),
    );
  }

  List<Widget> CreateButtons() {
    return [
      new RaisedButton(
        child: new Text("Login", style: new TextStyle(fontSize: 20.0)),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: validAndSave,
      ),
      new FlatButton(
        child: new Text("Not have an Account? Create Account?",
            style: new TextStyle(fontSize: 20.0)),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: movetoRegister,
      ),
    ];
  }
}
