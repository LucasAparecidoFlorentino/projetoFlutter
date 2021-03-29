

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/domain/services/produto_service.dart';

part 'produto_form_back.g.dart';

class ProdutoFormBack = _ProdutoFormBack with _$ProdutoFormBack;

abstract class _ProdutoFormBack with Store{
  Produto produto;
  var _service = GetIt.I.get<ProdutoService>();
  bool _nameIsValid;
  bool _quantidadeIsValid;
  bool _precoIsValid;

  @action
  bool get isValid => _nameIsValid && _quantidadeIsValid && _precoIsValid;

  _ProdutoFormBack(BuildContext context){
    var parametro = ModalRoute.of(context).settings.arguments;
    produto = (parametro == null) ? Produto(): parametro;
  }

  save() async{
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