unit br.com.factorysolution.guarana;

interface

uses
  br.com.factorysolution.interfaces;

type
  TGuarana = class(TInterfacedObject, IRefrigerante)
  private

  public
    function GetName: string;
    class function New: IRefrigerante;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TGuarana }

constructor TGuarana.Create;
begin

end;

destructor TGuarana.Destroy;
begin

  inherited;
end;

function TGuarana.GetName: string;
begin
  Result := 'Doly';
end;

class function TGuarana.New: IRefrigerante;
begin
  Result := Self.Create
end;

end.
