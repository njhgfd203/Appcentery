import 'package:flutter/material.dart';

void main() => runApp(AppCentury());

class AppCentury extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  var loginText = '';
  var passwordText = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Приложение века'),
          centerTitle: true,
        ),
        key: scaffoldKey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: TextFormField(
                  decoration: new InputDecoration(labelText: 'Login'),
                  keyboardType: TextInputType.text, //
                  style: _sizeTextBlack,
                  onChanged: (text) {
                    loginText = text;
                  },
                ),
              ),
              new Container(
                child: TextFormField(
                    decoration: new InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    style: _sizeTextBlack,
                    onChanged: (text) {
                      passwordText = text;
                    }),
                width: 400.0,
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 50.0),
                child: new MaterialButton(
                  color: Theme.of(context).accentColor,
                  height: 50.0,
                  minWidth: 150.0,
                  child: new Text(
                    "Войти",
                  ),
                  onPressed: () {
                    if (loginText == 'admin') {
                      if (passwordText == 'Password1') {
                        scaffoldKey.currentState.showSnackBar(new SnackBar(
                          content: Text('Добро пожаловать,Босс'),
                          action: SnackBarAction(
                            label: 'ok',
                            onPressed: () {},
                          ),
                        ));
                      }
                    } else {
                      if (loginText.isEmpty || passwordText.isEmpty) {

                          scaffoldKey.currentState.showSnackBar(new SnackBar(
                            content: Text('Заполните все поля'),
                            action: SnackBarAction(
                              label: 'ok',
                              onPressed: () {},
                            ),
                          ));

                      }
                    }
                    if (loginText != 'admin' || passwordText != 'Password1') {
                      scaffoldKey.currentState.showSnackBar(new SnackBar(
                        content: Text('Данные введены неверно'),
                        action: SnackBarAction(
                          label: 'ok',
                          onPressed: () {},
                        ),
                      ));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
