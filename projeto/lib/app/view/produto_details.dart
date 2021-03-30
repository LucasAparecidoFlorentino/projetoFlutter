import 'package:flutter/material.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/view/produto_details_back.dart';

class ProdutoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _back = ProdutoDetailsBack(context);
    Produto produto = _back.produto;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        var width = constraints.biggest.width;
        var radius = width/3;
       // var height = constraints.biggest.height;


        return Scaffold(
          body: ListView(
            children: [
              (Uri.tryParse(produto.urlAvatar).isAbsolute) ?
                CircleAvatar(
                  backgroundImage: NetworkImage(produto.urlAvatar),
                  radius: radius,
              ):
                CircleAvatar(
                  child:Icon(
                    Icons.personal_video_outlined,
                    size: width/2,
                  ),
                  radius: radius,
                ),
              Center(
                child: Text('${produto.nome}', style: TextStyle(fontSize: 30),),
              ),
              Card(
                child: ListTile(
                  title: Text('Quantidade:'),
                  subtitle: Text('${produto.quantidade}'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Preço:'),
                  subtitle: Text('${produto.preco}'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              _back.goToBack();
            },
          )
        );
      },
      
    );
  }
}