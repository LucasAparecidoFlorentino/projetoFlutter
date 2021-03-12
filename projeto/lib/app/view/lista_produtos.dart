import 'package:flutter/material.dart';
import 'package:projeto/app/database/sqlite/dao/produto_dao_impl.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/my_app.dart';

class ListaProdutos extends StatelessWidget {

 Future<List<Produto>>_buscar() async{
   return ProdutoDAOImpl().find();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _buscar(),
      builder: (context, futuro){
        if(futuro.hasData){
          var lista = futuro.data;
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
          var avatar = CircleAvatar(backgroundImage: NetworkImage(produto.urlAvatar),);
          return ListTile(
            leading: avatar,
            title: Text(produto.nome),
            subtitle: Text('${produto.quantidade}'),
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

        }else{
          return Scaffold();
        }
      }
      );
  }
}