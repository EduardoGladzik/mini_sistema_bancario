void main() {

  List<int> numeros = List.generate(10, (indice) => indice * 5);
  List<int> pares = [];

  for (int indice = 0; indice < numeros.length; indice++) {
    int valorSelecionado = numeros.elementAt(indice);
    if (valorSelecionado % 2 == 0)  {
      pares.add(valorSelecionado);
    }
  }

  Iterable<int> valoresPares = numeros.where((numero) => numero % 2 == 0);

  for (int numero in valoresPares) {
    print(numero);
  }
}
   