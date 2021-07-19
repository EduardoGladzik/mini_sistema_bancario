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

  //Get - formatado
  //String get numero => "Número da agencia: ${this._numero}.";
  //String get gerente => "Gerente da agencia: ${this._gerente?.nome}. Contato do(a) gerente: Número de telefone ${this._gerente?.telefoneParaContato} ou email ${this._gerente?.email}.";
  //String get endereco => "Endereço da agencia: Rua ${this._endereco?.rua} número ${this._endereco?.numero}, no bairro ${this._endereco?.bairro} da cidade de ${this._endereco?.cidade}, ${this._endereco?.estado}.";

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