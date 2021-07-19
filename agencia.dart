import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int? _numero;
  Gerente? _gerente;
  Endereco? _endereco;

  //Construtor
  Agencia(
    this._numero,
    this._gerente,
    this._endereco
  );

  //Get
  int? get numero => this._numero;
  Gerente? get gerente => this._gerente;
  Endereco? get endereco => this._endereco;

  //Set
  set numero(int? value) {
    this._numero = value;
  }
  set gerente(Gerente? gerente) {
    this._gerente = gerente;
  }
  set endereco(Endereco? endereco) {
    this._endereco = endereco;
  }

  @override
  String toString() {
    return "\nDados da Agência: \nNúmero: ${this._numero} \n$_endereco \n$_gerente";
  }
}