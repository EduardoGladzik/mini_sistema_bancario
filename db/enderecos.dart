import '../endereco.dart';

class Enderecos {
  static List<Endereco> _enderecos = [];

  void cadastrarEndereco(Endereco endereco) {
    _enderecos.add(endereco);
  }

  Iterable<Endereco> buscarEndereco(String rua) {
    return _enderecos.where((endereco) => endereco.rua == rua);
  }
}