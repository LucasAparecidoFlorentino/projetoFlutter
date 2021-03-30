

import 'package:flutter/cupertino.dart';
import 'package:projeto/app/domain/entities/produto.dart';

class ProdutoDetailsBack{

  BuildContext context; 
  Produto produto;

  ProdutoDetailsBack(this.context){
    produto = ModalRoute.of(context).settings.arguments;
  }

  goToBack(){
    Navigator.of(context).pop();
  }

}