

import 'package:get_it/get_it.dart';
import 'package:projeto/app/database/sqlite/dao/produto_dao_impl.dart';
import 'package:projeto/app/domain/interfaces/produto_dao.dart';
import 'package:projeto/app/domain/services/produto_service.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ProdutoDAO>(ProdutoDAOImpl());
  getIt.registerSingleton<ProdutoService>(ProdutoService());
}