import 'pessoa.dart';
import 'endereco.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj;
  String _nomeFantasia;
  String _razaoSocial;

  PessoaJuridica(
    this._cnpj,
    this._nomeFantasia,
    this._razaoSocial,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail]
  ) : super(
        vTelefone,
        vEndereco, 
        vEmail
      );

  String get cnpj => this._cnpj;
  String get nomeFantasia => this._nomeFantasia;
  String get razaoSocial => this._razaoSocial;

  set cnpj(String value) {
    this._cnpj = value;
  }  
  
  set nomeFantasia( value) {
    this._nomeFantasia = value;
  }
  
  set razaoSocial( value) {
    this._razaoSocial = value;
  }

  @override
  String toString() {
    return "\nDados da pessoa jurídica: \nCNPJ: ${this._cnpj} \nNome fantasia: ${this._nomeFantasia} \n${this.endereco} \nTelefone: ${this.telefoneParaContato} \nEmail: ${this.email}";
  }
}