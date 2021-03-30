

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/domain/services/produto_service.dart';
import 'package:projeto/app/my_app.dart';

part 'lista_produtos_back.g.dart';

class ListaProdutosBack = _ListaProdutosBack with _$ListaProdutosBack;

abstract class _ListaProdutosBack with Store{
  var _service = GetIt.I.get<ProdutoService>();

  @observable
  Future<List<Produto>> list;

  @action
  refreshList([dynamic value]){
    list = _service.find();
  }

  _ListaProdutosBack(){
    refreshList();
  }

  goToForm(BuildContext context, [Produto produto]){
    Navigator.of(context).pushNamed(MyApp.FORM_PRODUTO, arguments: produto).then(refreshList);
  }

  goToDetails(BuildContext context, Produto produto){
    Navigator.of(context).pushNamed(MyApp.PRODUTO_DETAILS, arguments: produto);
  }

  remove(int id){
    _service.remove(id);
    refreshList();
  }

}