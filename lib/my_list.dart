import 'package:flutter/material.dart';

void main() => runApp(DecksList());

class DecksList extends StatelessWidget {
  Widget _buildTodoitem({@required String title, description,data}){
      return ListTile(
          title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        subtitle: Text(description,style: TextStyle(fontSize: 15),),
        trailing: Text(data),

      ) ;
  }

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
                onPressed: () {Navigator.of(context).pop();},
              ),
            ],

          ),

          body: Column(
            children:<Widget> [
              _buildTodoitem(title: '1. Сделать математику.',description:'Сделать один вариант ЕГЭ по математике и еще задания, которые дала Вера Николаевна.' ,data:'Выполнить до 22:00'),
              _buildTodoitem(title: '2.Подготовится к репетиции',description:'Выучить все партии к песням на воскресенье',data:'Выполнить до 19:00'),
              _buildTodoitem(title: '3.Погулять собаку',description:'',data:'Выполнить до 20:00')



            ],

          )
      ),
    );
  }
}
