

import 'dart:ffi';

import 'package:get_it/get_it.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/domain/exception/domain_layer_exception.dart';
import 'package:projeto/app/domain/interfaces/produto_dao.dart';

class ProdutoService{
  var _dao = GetIt.I.get<ProdutoDAO>();

  save(Produto produto){
    validateName(produto.nome);
    validatePreco(produto.preco);
    validateQuantidade(produto.quantidade);
    _dao.save(produto);
  }

  remove(int id){
    _dao.remove(id);
  }

  Future<List<Produto>>find(){
    return _dao.find();
  }

  validateName(String name){
    var min = 3;
    var max = 50;

    if(name == null){
      throw new DomainLayerExcpetion('O nome é obrigatorio.');
    }else if(name.length < min){
      throw new DomainLayerExcpetion('O nome deve possuir pelo menos $min caracteres.');
    }else if(name.length > max){
      throw new DomainLayerExcpetion('O nome deve possuir no maximo $max caracteres.');
    }
  }

  validatePreco(double preco){
    if(preco == null){
      throw new DomainLayerExcpetion('O preço é obrigatorio.');
    }
  }

  validateQuantidade(int quantidade){
    if(quantidade == null){
      throw new DomainLayerExcpetion('A quantidade é obrigatoria.');
    }
  }
}