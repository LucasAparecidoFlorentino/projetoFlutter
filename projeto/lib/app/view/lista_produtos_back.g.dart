// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_produtos_back.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaProdutosBack on _ListaProdutosBack, Store {
  final _$listAtom = Atom(name: '_ListaProdutosBack.list');

  @override
  Future<List<Produto>> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(Future<List<Produto>> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$_ListaProdutosBackActionController =
      ActionController(name: '_ListaProdutosBack');

  @override
  dynamic refreshList([dynamic value]) {
    final _$actionInfo = _$_ListaProdutosBackActionController.startAction(
        name: '_ListaProdutosBack.refreshList');
    try {
      return super.refreshList(value);
    } finally {
      _$_ListaProdutosBackActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list}
    ''';
  }
}
