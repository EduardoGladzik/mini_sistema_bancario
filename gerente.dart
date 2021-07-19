import 'endereco.dart';
import 'funcionario.dart';

class Gerente extends Funcionario {
  int _matricula;
  int _ramal;

  //Construtor
  Gerente (
    this._matricula,
    this._ramal,
    double vSalario,
    double vCargaHoraria,
    String vNome,
    String vRG,
    String vCPF,
    String vDataDeNascimento,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(
    vSalario,
    vCargaHoraria,
    vNome,
    vRG,
    vCPF,
    vDataDeNascimento,
    vTelefone,
    vEndereco,
    vEmail
    );

  //Get
  int get matricula => this._matricula;
  int get ramal => this._ramal;

  //Set
  set matricula(int number) {
    this._matricula = number;
  }

  set ramal(int number) {
    this._ramal = number;
  }

  @override
  String toString() {
  return "\nDados de gerente: \nNome: ${this.nome} \nCarga horária: ${this.cargaHoraria} \nSalário: ${this.salario} \nRamal: ${this._ramal} \nMatricula: ${this._matricula} \n----- \nMétodos para contato: \nTelefone: ${this.telefoneParaContato} \nEmail: ${this.email}";
  }
}
