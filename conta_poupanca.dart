import 'pessoa.dart';
import 'conta.dart';
import 'agencia.dart';

class ContaPoupanca extends Conta {
  int _dataRendimento;
  double _percentualDeRendimento;

  ContaPoupanca(
    this._dataRendimento,
    this._percentualDeRendimento,
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

  int get dataRandimento => this._dataRendimento;
  double get percentualDeRendimento => this._percentualDeRendimento;

  void render() {
    double rendimento = this.obterSaldo() * this._percentualDeRendimento;
    this.depositar(rendimento);
  }

  @override
  String toString() {
    return "\nDados da conta poupança: \nNúmero ${this.numero} \nAgencia ${this.agencia} \nProprietário: ${this.pessoa} \n----- \nSaldo: ${this.saldo} \nData de rendimento: ${this._dataRendimento} \nPercentual de rendimento: ${this._percentualDeRendimento}";
  }
}