unit br.com.factorysolution.command.notafiscal.gravar;

interface

uses
  br.com.factorysolution.command.Interfaces;

Type
  TModelNotaFiscalGravar = class(TInterfacedObject, iCommand)
    private
      FReceiver : iNotaFiscal;
    public
      constructor Create(Value : iNotaFiscal);
      destructor Destroy; override;
      class function New(FReceiver : iNotaFiscal) : iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelNotaFiscalGravar }

constructor TModelNotaFiscalGravar.Create(Value : iNotaFiscal);
begin
  FReceiver := Value;
end;

destructor TModelNotaFiscalGravar.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalGravar.Execute: iCommand;
begin
  Result := Self;
  FReceiver.Gravar;
end;

class function TModelNotaFiscalGravar.New(FReceiver : iNotaFiscal) : iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
