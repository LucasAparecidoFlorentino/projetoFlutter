import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/domain/services/produto_service.dart';


class ProdutoFormBack {
  Produto produto;
  var _service = GetIt.I.get<ProdutoService>();
  bool _nameIsValid;

  bool get isValid => _nameIsValid;

  ProdutoFormBack(BuildContext context){
    var parametro = ModalRoute.of(context).settings.arguments;
    produto = (parametro == null) ? Produto(): parametro;
  }

  save() async{
    print("Lucas vacilão");
    await _service.save(produto);
  }

  String validateName(String name){
    try{
      _service.validateName(name);
      _nameIsValid = true;
      return null;      
    }catch(e){
      _nameIsValid = false;
      return e.toString();
    }
  }


}