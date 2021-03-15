import 'package:flutter/material.dart';

void main() => runApp(deckslist());

class deckslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Сегодня'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(

                icon: Icon(
                  Icons.input,
                ),
                onPressed: () {},
              ),
            ],

          ),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(
                    left: 20,
                    right: 40,
                  ),
                  child: Text(
                    '1. Сделать математику.',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    'Сделать один вариант ЕГЭ по математике и еще задания ,которые дала Вера Николаевна.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(
                  left: 300,

                  top: 10,
                ),
                  child:Text('Выполнить до 19:00')
                ),
                new Container(
                  padding: new EdgeInsets.only(
                    left: 20,

                    top: 20,
                  ),
                  child: Text(
                    '2.Подготовится к репетиции',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(
                    left: 10,
                    right: 10,

                  ),
                  child: Text(
                    'Выучить все партии к песням на воскресенье'
                        ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                new Container(
                    padding: new EdgeInsets.only(
                      left: 300,

                      top: 10,
                    ),
                    child:Text('Выполнить до 22:00')
                ),
                new Container(
                  padding: new EdgeInsets.only(
                    left: 20,
                    right: 40,
                  ),
                  child: Text(
                    '3.Погулять собаку',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                new Container(
                    padding: new EdgeInsets.only(
                      left: 300,

                      top: 10,
                    ),
                    child:Text('Выполнить до 20:00')
                ),
              ]
          )
      ),
    );
  }
}
