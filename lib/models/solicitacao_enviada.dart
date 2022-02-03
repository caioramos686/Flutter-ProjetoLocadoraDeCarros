class Solicitacao {
  final String nome;
  final String cpf;
  final String email;
  final String nomeCarro;
  final String dataInicial;
  final String dataFinal;

  Solicitacao(this.nome, this.cpf, this.email, this.nomeCarro, this.dataInicial,
      this.dataFinal);

  @override
  String toString() {
    return 'Solicitacao{nome: $nome, cpf: $cpf, email: $email, nomeCarro: $nomeCarro, dataInicial: $dataInicial, dataFinal: $dataFinal}';
  }
}
