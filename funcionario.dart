import 'endereco.dart';
import 'pessoa_fisica.dart';

abstract class Funcionario extends PessoaFisica {
  double _salario;
  double _cargaHoraria;

  Funcionario(
    this._salario,
    this._cargaHoraria,
    String vNome,
    String vRG,
    String vCPF,
    String vDataDeNasciemnto,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(
      vNome,
      vRG,
      vCPF,
      vDataDeNasciemnto,
      vTelefone,
      vEndereco,
      vEmail
  );

  double get salario => this._salario;
  double get cargaHoraria => this._cargaHoraria; 

  set salario(double value) {
    this._salario = value;
  }

  set cargaHoraria(double cargaHoraria) {
    this._cargaHoraria = cargaHoraria;
  }
}