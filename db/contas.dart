import '../conta.dart';

class Contas {
  static List<Conta> _contas = [];

  void cadastrarConta(Conta conta) {
    _contas.add(conta);
  }
  
  Iterable<Conta> buscarConta(String numero) {
    return _contas.where((conta) => conta.numero == numero);
  }
}