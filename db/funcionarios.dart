import 'dart:html';

import '../funcionario.dart';

class Funcionarios {
  static List<Funcionario> _funcionarios = [];

  void cadastrarFuncionario(Funcionario funcionario) {
    _funcionarios.add(funcionario);
  }

  Iterable<Funcionario> buscarFuncionario(String CPF) {
    return _funcionarios.where((funcionario) => funcionario.CPF == CPF);
  }
}