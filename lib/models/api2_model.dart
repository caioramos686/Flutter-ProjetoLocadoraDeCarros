class Api2Model {
  Api2Model({
    required this.id,
    required this.codigo,
    required this.codigoBarras,
    required this.produtorNome,
    required this.produtorCpfCnpj,
    required this.propriedadeNome,
    required this.propriedadeCodigo,
    required this.propriedadeEndereco,
    required this.propriedadeMunicipio,
    required this.propriedadeUf,
    required this.flagPragaQuarentenaria,
    required this.flagPragaNaoQuarentenaria,
    required this.flagPragaEspecifica,
    required this.flagPragaExportacao,
    required this.nspPartidaLacrada,
    required this.rtEmitenteNome,
    required this.rtEmitenteCrea,
    required this.rtEmitenteHabilitacao,
    required this.rtEmitenteFormacao,
    required this.dataEmissao,
    required this.dataVencimento,
    required this.validadeDias,
    required this.municipioEmissao,
    required this.produtos,
    required this.declaracoes,
  });
  late final int id;
  late final int codigo;
  late final String codigoBarras;
  late final String produtorNome;
  late final String produtorCpfCnpj;
  late final String propriedadeNome;
  late final String propriedadeCodigo;
  late final String propriedadeEndereco;
  late final String propriedadeMunicipio;
  late final String propriedadeUf;
  late final bool flagPragaQuarentenaria;
  late final bool flagPragaNaoQuarentenaria;
  late final bool flagPragaEspecifica;
  late final bool flagPragaExportacao;
  late final bool nspPartidaLacrada;
  late final String rtEmitenteNome;
  late final String rtEmitenteCrea;
  late final String rtEmitenteHabilitacao;
  late final String rtEmitenteFormacao;
  late final String dataEmissao;
  late final String dataVencimento;
  late final int validadeDias;
  late final String municipioEmissao;
  late final List<Produtos> produtos;
  late final List<Declaracoes> declaracoes;

  Api2Model.fromJson(Map<String, dynamic> json){
    id = json['id'];
    codigo = json['codigo'];
    codigoBarras = json['codigoBarras'];
    produtorNome = json['produtorNome'];
    produtorCpfCnpj = json['produtorCpfCnpj'];
    propriedadeNome = json['propriedadeNome'];
    propriedadeCodigo = json['propriedadeCodigo'];
    propriedadeEndereco = json['propriedadeEndereco'];
    propriedadeMunicipio = json['propriedadeMunicipio'];
    propriedadeUf = json['propriedadeUf'];
    flagPragaQuarentenaria = json['flagPragaQuarentenaria'];
    flagPragaNaoQuarentenaria = json['flagPragaNaoQuarentenaria'];
    flagPragaEspecifica = json['flagPragaEspecifica'];
    flagPragaExportacao = json['flagPragaExportacao'];
    nspPartidaLacrada = json['nspPartidaLacrada'];
    rtEmitenteNome = json['rtEmitenteNome'];
    rtEmitenteCrea = json['rtEmitenteCrea'];
    rtEmitenteHabilitacao = json['rtEmitenteHabilitacao'];
    rtEmitenteFormacao = json['rtEmitenteFormacao'];
    dataEmissao = json['dataEmissao'];
    dataVencimento = json['dataVencimento'];
    validadeDias = json['validadeDias'];
    municipioEmissao = json['municipioEmissao'];
    produtos = List.from(json['produtos']).map((e)=>Produtos.fromJson(e)).toList();
    declaracoes = List.from(json['declaracoes']).map((e)=>Declaracoes.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['codigo'] = codigo;
    _data['codigoBarras'] = codigoBarras;
    _data['produtorNome'] = produtorNome;
    _data['produtorCpfCnpj'] = produtorCpfCnpj;
    _data['propriedadeNome'] = propriedadeNome;
    _data['propriedadeCodigo'] = propriedadeCodigo;
    _data['propriedadeEndereco'] = propriedadeEndereco;
    _data['propriedadeMunicipio'] = propriedadeMunicipio;
    _data['propriedadeUf'] = propriedadeUf;
    _data['flagPragaQuarentenaria'] = flagPragaQuarentenaria;
    _data['flagPragaNaoQuarentenaria'] = flagPragaNaoQuarentenaria;
    _data['flagPragaEspecifica'] = flagPragaEspecifica;
    _data['flagPragaExportacao'] = flagPragaExportacao;
    _data['nspPartidaLacrada'] = nspPartidaLacrada;
    _data['rtEmitenteNome'] = rtEmitenteNome;
    _data['rtEmitenteCrea'] = rtEmitenteCrea;
    _data['rtEmitenteHabilitacao'] = rtEmitenteHabilitacao;
    _data['rtEmitenteFormacao'] = rtEmitenteFormacao;
    _data['dataEmissao'] = dataEmissao;
    _data['dataVencimento'] = dataVencimento;
    _data['validadeDias'] = validadeDias;
    _data['municipioEmissao'] = municipioEmissao;
    _data['produtos'] = produtos.map((e)=>e.toJson()).toList();
    _data['declaracoes'] = declaracoes.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Produtos {
  Produtos({
    required this.id,
    required this.codigoUp,
    required this.nomeProduto,
    required this.quantidade,
    required this.unidadeMedida,
    required this.dataInicioColheita,
    required this.dataFimColheita,
    this.validadeDocumento,
  });
  late final int id;
  late final int codigoUp;
  late final String nomeProduto;
  late final String quantidade;
  late final String unidadeMedida;
  late final String dataInicioColheita;
  late final String dataFimColheita;
  late final Null validadeDocumento;

  Produtos.fromJson(Map<String, dynamic> json){
    id = json['id'];
    codigoUp = json['codigoUp'];
    nomeProduto = json['nomeProduto'];
    quantidade = json['quantidade'];
    unidadeMedida = json['unidadeMedida'];
    dataInicioColheita = json['dataInicioColheita'];
    dataFimColheita = json['dataFimColheita'];
    validadeDocumento = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['codigoUp'] = codigoUp;
    _data['nomeProduto'] = nomeProduto;
    _data['quantidade'] = quantidade;
    _data['unidadeMedida'] = unidadeMedida;
    _data['dataInicioColheita'] = dataInicioColheita;
    _data['dataFimColheita'] = dataFimColheita;
    _data['validadeDocumento'] = validadeDocumento;
    return _data;
  }
}

class Declaracoes {
  Declaracoes({
    required this.id,
    required this.descricao,
  });
  late final int id;
  late final String descricao;

  Declaracoes.fromJson(Map<String, dynamic> json){
    id = json['id'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['descricao'] = descricao;
    return _data;
  }
}