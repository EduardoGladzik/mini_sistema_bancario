import 'agencia.dart';
import 'pessoa.dart';

abstract class Conta {
  // Atributos
  String _numero;
  Agencia _agencia;
  double _saldo;
  Pessoa _pessoa;

  //Construtor
  Conta(
    this._numero,
    this._agencia,
    this._saldo,
    this._pessoa,
  );

  //Get
  String get numero => "Número da conta: ${this._numero}";
  Agencia get agencia => this._agencia;
  double get saldo => this._saldo;
  Pessoa get pessoa => this.pessoa;

  //Set
  set numero(String value) {
    this._numero = value;
  }
  set agencia(Agencia agencia) {
    this._agencia = agencia;
  }
  set saldo(double value) {
    this._saldo = value;
  }
  set pessoa(Pessoa pessoa) {
    this._pessoa = pessoa;
  }

  //Métodos
  double obterSaldo() {
    return this.saldo;
  }

  double sacar(double valor) {
    // Retirar da valor da conta
    bool podeSacar = (this._saldo >= valor);
    (podeSacar) ? this._saldo -= valor : false;
    return (podeSacar) ? valor : 0;
  }

  bool depositar(double valor) {
    // saldo(500) = saldo(400) + valor(100)
    this.saldo += valor;
    return true;
  }

  bool transferir(double valor, Conta destinatario) {
    this.sacar(valor);
    destinatario.depositar(valor);
    return true;
  }

  @override
  String toString() {
    return "\nDados da conta: \nNúmero: ${this._numero} \nSaldo: ${this._saldo} \n$_agencia";
  }
}
