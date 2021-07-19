import 'conta.dart';
import 'agencia.dart';
import 'pessoa.dart';

class ContaCorrente extends Conta{
  double _limite;

  ContaCorrente(
    this._limite,
    String vNumero,
    Agencia vAgencia,
    double vSaldo,
    Pessoa vPessoa,
  ) : super(
        vNumero,
        vAgencia,
        vSaldo,
        vPessoa,
  );

  double get limite => this._limite;

  @override
  double sacar(double valor) {
    double valorSaque = (this.obterSaldo() + this._limite >= valor) ? valor : 0;
    return super.sacar(valorSaque);
  }

  @override 
  String toString() {
    return "\nDados da conta corrente: \nNúmero: ${this.numero} \nAgencia: ${this.agencia} \nProprietário: ${this.pessoa} \n----- \nSaldo: ${this.saldo} \nLimite ${this._limite}";
  }
}