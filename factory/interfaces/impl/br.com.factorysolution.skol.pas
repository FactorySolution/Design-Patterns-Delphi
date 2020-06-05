unit br.com.factorysolution.skol;

interface

uses
  br.com.factorysolution.interfaces;

type
  TSkol = class(TInterfacedObject, ICerveja)
  private

  public
    function GetName: string;
    class function New: ICerveja;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TSkol }

constructor TSkol.Create;
begin

end;

destructor TSkol.Destroy;
begin

  inherited;
end;

function TSkol.GetName: string;
begin
  Result := 'Skol';
end;

class function TSkol.New: ICerveja;
begin
  Result := Self.Create
end;

end.
