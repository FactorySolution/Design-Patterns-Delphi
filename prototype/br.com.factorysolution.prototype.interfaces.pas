unit br.com.factorysolution.prototype.interfaces;

interface

type

  IPessoa = interface
    ['{65D96F40-D0F2-4E30-BC5A-653ED22A01C7}']
    function SetNome(const AValue: string): IPessoa;
    function SetSobrenome(const AValue: string): IPessoa;

    function GetNome: string;
    function GetSobrenome: string;

    function Clone: IPessoa;

  end;


implementation

end.
