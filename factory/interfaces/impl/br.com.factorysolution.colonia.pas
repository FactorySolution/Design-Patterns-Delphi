unit br.com.factorysolution.colonia;

interface

uses
  br.com.factorysolution.interfaces;

type
  TColonia = class(TInterfacedObject, ICerveja)
  private

  public
    function GetName: string;
    class function New: ICerveja;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TColonia }

constructor TColonia.Create;
begin

end;

destructor TColonia.Destroy;
begin

  inherited;
end;

function TColonia.GetName: string;
begin
  Result := 'Colonia';
end;

class function TColonia.New: ICerveja;
begin
  Result := Self.Create
end;

end.
