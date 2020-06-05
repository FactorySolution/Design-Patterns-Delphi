unit br.com.factorycolution.singleton;

interface

type
  TMyClass = class
  private
    FValor: string;
    class var FInstance: TMyClass;

  public
    class function GetInstance: TMyClass;
    function Teste: string;
    procedure Valor(const AValor: string);
  end;

implementation

{ TMyClass }

class function TMyClass.GetInstance: TMyClass;
begin
  if not Assigned(FInstance) then
    FInstance := Self.Create;
  Result := FInstance;
end;

function TMyClass.Teste: string;
begin
  Result := FValor;
end;

procedure TMyClass.Valor(const AValor: string);
begin
  FValor := AValor;
end;

end.
