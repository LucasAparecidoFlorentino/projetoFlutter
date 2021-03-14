

import 'package:get_it/get_it.dart';
import 'package:projeto/app/database/sqlite/dao/produto_dao_impl.dart';
import 'package:projeto/app/domain/interfaces/produto_dao.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ProdutoDAO>(ProdutoDAOImpl());
}