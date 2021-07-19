class Endereco {
  // tipo nome
  String? _rua;
  String? _numero;
  String? _bairro;
  String? _cidade;
  String? _estado;

  //Construtor
  Endereco(
    this._rua,
    this._numero,
    this._bairro,
    this._cidade,
    this._estado
  );

  //Get
  String? get rua => "Rua: ${this._rua}.";
  String? get numero => "Número da casa/apartamento: ${this._numero}.";
  String? get bairro => "Bairro: ${this._bairro}.";
  String? get cidade => "Cidade: ${this._cidade}.";
  String? get estado => "Estado: ${this._estado}.";

  //Set
  set rua(String? rua) {
    this._rua = rua;
  }
  set numero(String? numero) {
    this._numero = numero;
  }
  set bairro(String? bairro) {
    this._bairro = bairro;
  }
  set cidade(String? cidade) {
    this._cidade = cidade;
  }
  set estadp(String? estado) {
    this._estado = estado;
  }

  @override
  String toString() {
    return "Endereço: Rua/AV ${this._rua}, n°${this._numero}, Bairro ${this._bairro} - ${this._cidade}/${this._estado}";
  }
}
