import 'endereco.dart';

abstract class Pessoa {
  String? _email;
  String _telefoneParaContato;
  Endereco _endereco;

  //Construtor
  Pessoa( 
    this._telefoneParaContato,
    this._endereco,
    [this._email]
  );

  //Get
  Endereco get endereco => this._endereco;
  String? get email => this._email;
  String get telefoneParaContato => this._telefoneParaContato;

  //Set
  set email(String? email) {
    this._email;
  }
  set telefoneParaContato(String telefoneParaContato) {
    this._telefoneParaContato;
  }

  set endereco(Endereco endereco) {
    this._endereco;
  }
}