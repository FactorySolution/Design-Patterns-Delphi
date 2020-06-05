unit br.com.factorysolution.command.notafiscal.email;

interface

uses
  br.com.factorysolution.command.Interfaces;


Type
  TModelNotaFiscalEmail = class(TInterfacedObject, iCommand)
    private
      FReceiver : iNotaFiscal;
    public
      constructor Create(Value : iNotaFiscal);
      destructor Destroy; override;
      class function New(FReceiver : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelNotaFiscalEmail }

constructor TModelNotaFiscalEmail.Create(Value : iNotaFiscal);
begin
  FReceiver := Value;
end;

destructor TModelNotaFiscalEmail.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalEmail.Execute: iCommand;
begin
  Result := Self;
  FReceiver.Email;
end;

class function TModelNotaFiscalEmail.New(FReceiver : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
