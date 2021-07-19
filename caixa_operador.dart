import 'endereco.dart';
import 'funcionario.dart';

class CaixaOperador extends Funcionario {
  
  
  CaixaOperador(
    double vSalario, 
    double vCargaHoraria, 
    String vNome, 
    String vRG, 
    String vCPF, 
    String vDataDeNasciemnto, 
    String vTelefone, 
    Endereco vEndereco
  ) : super(
    vSalario, 
    vCargaHoraria, 
    vNome, 
    vRG, 
    vCPF, 
    vDataDeNasciemnto, 
    vTelefone, 
    vEndereco
  );
}