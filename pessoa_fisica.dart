import 'pessoa.dart';
import 'endereco.dart';

class PessoaFisica extends Pessoa {
  String _nome;
  String _rg;
  String _cpf;
  String _dataDeNascimento;
 
  //Construtor
  PessoaFisica(
    this._nome,
    this._rg,
    this._cpf,
    this._dataDeNascimento,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(
        vTelefone, 
        vEndereco, 
        vEmail
      );

  //Get
  String get nome => this._nome;
  String get RG => this._rg;
  String get CPF => this._cpf;
  String get dataDeNascimento => this._dataDeNascimento;

  //Set
  set nome(String nome) {
    this._nome = nome;
  }

  set RG(String RG) {
    this._rg = RG;
  }

  set CPF(String CPF) {
    this._cpf = CPF;
  }

  set dataDeNascimento(String date) {
    this._dataDeNascimento = date;
  }

  @override
  String toString() {
    return "\nDados da pessoa física: \nNome: ${this._nome} \nRG: ${this._rg} \nCPF: ${this._cpf} \n${this.endereco} \nTelefone: ${this.telefoneParaContato} \nEmail: ${this.email}";
  }
}