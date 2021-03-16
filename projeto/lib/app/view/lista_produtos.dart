import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/my_app.dart';
import 'package:projeto/app/view/lista_produtos_back.dart';

class ListaProdutos extends StatelessWidget {
  final _back = ListaProdutosBack();

  CircleAvatar circleAvatar(String url){
    return (Uri.tryParse(url).isAbsolute) ?
      CircleAvatar(backgroundImage: NetworkImage(url))
      : CircleAvatar(child: Icon(Icons.add_business_sharp));
    }

  Widget iconEditButton(Function onPressed){
    return IconButton(icon: Icon(Icons.edit), color: Colors.green, onPressed: onPressed);
  }

  Widget iconRemoveButton(BuildContext context, Function remove){
    return IconButton(
      icon: Icon(Icons.delete),
      color: Colors.red,
      onPressed: (){
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Excluir'),
            content: Text('Confirmar a exclusão ?'),
            actions: [
              FlatButton(
                child: Text('Não'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Sim'),
                onPressed: remove,
              ),
            ],
          )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Produtos'),
          actions: [
            IconButton(
                icon: Icon(Icons.local_atm_rounded),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.FORM_PRODUTO);
                })
          ],
        ),
        body: Observer(builder: (context) {
          return FutureBuilder(
              future: _back.list,
              builder: (context, futuro) {
                if (!futuro.hasData) {
                  return CircularProgressIndicator();
                } else {
                  List<Produto> lista = futuro.data;
                  return ListView.builder(
                    itemCount: lista.length,
                    itemBuilder: (context, i) {
                      var produto = lista[i];
                      return ListTile(
                        leading: circleAvatar(produto.urlAvatar),
                        title: Text(produto.nome),
                        subtitle: Text('${produto.quantidade}'),
                        trailing: Container(
                          width: 100,
                          child: Row(
                            children: [
                              iconEditButton((){
                                _back.goToForm(context, produto);
                              }),
                              iconRemoveButton(context, (){
                                _back.remove(produto.id);
                                Navigator.of(context).pop();
                              })
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              });
        }));
  }
}
