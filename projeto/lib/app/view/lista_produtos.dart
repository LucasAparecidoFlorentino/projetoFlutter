import 'package:flutter/material.dart';
import 'package:projeto/app/my_app.dart';

class ListaProdutos extends StatelessWidget {

  final lista = [
    {'nome':'Brahma','quantidade':'15','preco':'9', 'avatar':'https://cdn.pixabay.com/photo/2016/11/29/12/32/beach-1869523_960_720.jpg'},
    {'nome':'Original','quantidade':'48','preco':'15', 'avatar':'https://cdn.pixabay.com/photo/2018/05/31/16/51/glass-of-beer-3444480_960_720.jpg'},
    {'nome':'SubZero','quantidade':'24','preco':'7', 'avatar':'https://cdn.pixabay.com/photo/2012/04/13/11/53/glass-32068_960_720.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        actions: [
          IconButton(
            icon:Icon(Icons.local_atm_rounded),
            onPressed:(){
              Navigator.of(context).pushNamed(MyApp.FORM_PRODUTO);
            }
            )
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder:(context, i){
          var produto = lista[i];
          var imagem = CircleAvatar(backgroundImage: NetworkImage(produto['avatar']),);
          return ListTile(
            leading: imagem,
            title: Text(produto['nome']),
            subtitle: Text(produto['quantidade']),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon:Icon(Icons.edit),onPressed:null),
                  IconButton(icon:Icon(Icons.delete),onPressed:null),
                ],
                ),
              ),
          );
        },
      ),
    );
  }
}