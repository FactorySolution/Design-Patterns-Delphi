
unit br.com.factorysolution.facade.interfaces;

interface

type
  IFacade = interface
    ['{6EA04BB9-FD0D-46D9-AAF2-37E0D0671A34}']
    function CalcularCustoProduto(const AValorProduto: Extended): IFacade;
    function GetValorCalculado: Extended;
  end;


  ICotacaoOnline = interface
    ['{370A4391-7E2E-4AF1-8A42-56E00047FBE8}']
    function CotarPreco(const AEan: string): ICotacaoOnline;
    function GetPreco: Extended;
  end;

  IPrecoMedio = interface
    ['{C50EAF79-FC8F-4364-9B82-D279FB04122A}']
    function PrecoMedio(const AEan: string): IPrecoMedio;
    function GetPrecoMedio: Extended;
  end;


  IMarkup = interface
    ['{A660BC66-FA72-480D-A96F-C03B26F26526}']
    function CalculaMarkup(const APreco, APercentual: Extended): IMarkup;
    function GetValorProduto: Extended;
  end;


implementation

end.
