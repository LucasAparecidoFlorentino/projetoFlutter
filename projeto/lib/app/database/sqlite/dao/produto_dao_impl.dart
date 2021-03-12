
import 'package:projeto/app/database/sqlite/connection.dart';
import 'package:projeto/app/domain/entities/produto.dart';
import 'package:projeto/app/domain/interfaces/produto_dao.dart';
import 'package:sqflite/sqflite.dart';

class ProdutoDAOImpl implements ProdutoDAO{
  Database _db;

  @override
  Future<List<Produto>> find() async{
      _db = await Connection.get();
      List<Map<String,dynamic>> resultado = await _db.query('produto');
      List<Produto> lista = List.generate( resultado.length, (i){
        var linha = resultado[i];
        return Produto(
          id: linha['id'],
          nome: linha['nome'],
          quantidade: linha['quantidade'],
          preco: linha['preco'],
          urlAvatar: linha['url_avatar']
        );
      }

      );

      return lista;

  }

  @override
  remove(int id) async{
      _db = await Connection.get();
      var sql = 'DELETE FROM produto WHERE id = ?';
      _db.rawDelete(sql, [id]);
    }
  
    @override
    save(Produto produto) async{
      _db = await Connection.get();
      var sql;
      if(produto.id == null){
        sql = 'INSERT INTO produto(nome, quantidade, preco, url_avatar)VALUES(?, ?, ?, ?)';
        _db.rawInsert(sql, [produto.nome, produto.quantidade, produto.preco, produto.urlAvatar]);     
      }else{
        sql = 'UPDATE produto SET nome = ?, quantidade = ?, preco = ?, url_avatar = ? WHERE id = ?';
        _db.rawUpdate(sql, [produto.nome, produto.quantidade, produto.preco, produto.urlAvatar, produto.id]);
      }

  }

}
