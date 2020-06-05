unit br.com.factorysolution.prototype.pessoa;

interface

uses
  br.com.factorysolution.prototype.interfaces;

type
  TPessoa = class(TInterfacedObject, IPessoa)
  private
    FNome: string;
    FSobreNome: string;
  public
    function GetNome: string;
    function GetSobrenome: string;
    function SetNome(const AValue: string): IPessoa;
    function SetSobrenome(const AValue: string): IPessoa;

    class function New: IPessoa;
    constructor Create;
    destructor Destroy; override;

    function Clone: IPessoa;

  end;

implementation

{ TPessoa }

function TPessoa.Clone: IPessoa;
begin
  Result := TPessoa.New;
  Result.
    SetNome(FNome).
      SetSobrenome(FSobreNome);
end;

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;

function TPessoa.GetSobrenome: string;
begin
  Result := FSobreNome;
end;

class function TPessoa.New: IPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.SetNome(const AValue: string): IPessoa;
begin
  FNome := AValue;
  Result := Self;
end;

function TPessoa.SetSobrenome(const AValue: string): IPessoa;
begin
  FSobreNome := AValue;
  Result := Self;
end;

end.
