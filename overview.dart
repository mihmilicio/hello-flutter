void main() {
  print("Hello");
  String nome = "Fulano de Tal";
  var nome2 = "Fulano de Tal";

  int numero1 = 1;
  double decimal = 1.12;
  num numeroX = 0.03;

  bool booleano = true;

  List lista = List();
  lista.add(1);
  lista.add(1.12);
  lista.add("texto");

  List<String> listaString = List();
  listaString.add("texto aqui");

  var listaDeduzida = [1,2,3,4];
//  listaDeduzida.add("abc");

  const constanteX = 13;

  int varConvertida = int.parse("14");
  num varConvertidaNum = num.parse("14");

  for (var i = 0; i < lista.length; i++) {
//    print(i);
//    print(lista[i]);
  }

//  var mapa = Map();
  var mapa = { 'genero': 'F' };
  mapa['user'] = 'taltal';
  mapa['senha'] = '123';
//  print(mapa);

  funcaoTeste(1, 2);
  funcaoTeste(3);

  funcaoTesteNomeado(4, p3: 5, p2: 6);

  var p = Pessoa();
  p.ola();
  p.nome = "Paulo";
  p.ola();
}
// primeiro normais, depois nomeados e opcionais
// nomeados são opcionais

funcaoTeste(param1, [param2]) {
  print("teste $param1 $param2");
}

funcaoTesteNomeado(p1, {p2, p3}) {
  print("segundo $p1 $p2 $p3");
}

//abstract class Pessoa {
class Pessoa {
  String nome;
  int cpf;

  Pessoa();
  
  Pessoa.fromNome(String nome) {
    this.nome = nome;
  }

  ola() {
    print("Meu nome é $nome");
  }
}

class Aluno extends Pessoa {
  ola() {
    print("Sou o aluno $nome");
  }
}

class Calculadora {
  int soma(a, b) {
    return a + b;
  }
}
class CalculadoraCientifica implements Calculadora {
  @override
  int soma(a, b) {
    // TODO: implement soma
    throw UnimplementedError();
  }
  
}