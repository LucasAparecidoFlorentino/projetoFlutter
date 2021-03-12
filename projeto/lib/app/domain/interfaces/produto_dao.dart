

import 'package:projeto/app/domain/entities/produto.dart';

abstract class ProdutoDAO {

  save(Produto produto);

  remove(int id);

  Future<List<Produto>> find();

}