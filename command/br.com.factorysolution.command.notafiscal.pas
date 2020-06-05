unit br.com.factorysolution.command.notafiscal;

interface

uses
  br.com.factorysolution.command.Interfaces;


Type
  TModelNotaFiscal = class(TInterfacedObject, iNotaFiscal)
  private
    FDisplay: TEvDisplay;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iNotaFiscal;
    function Criar: iNotaFiscal;
    function Validar: iNotaFiscal;
    function Enviar: iNotaFiscal;
    function Gravar: iNotaFiscal;
    function Email: iNotaFiscal;
    function Display(Value: TEvDisplay): iNotaFiscal;

    function EnviarNotaFiscal : iNotaFiscal;
    function EnviarNotaSemEmail: iNotaFiscal;
  end;

implementation

uses
  br.com.factorysolution.command.notafiscal.invoker,
  br.com.factorysolution.command.notafiscal.criar,
  br.com.factorysolution.command.notafiscal.validar,
  br.com.factorysolution.command.notafiscal.enviar,
  br.com.factorysolution.command.notafiscal.gravar,
  br.com.factorysolution.command.notafiscal.email;

{ TModelNotaFiscal }

constructor TModelNotaFiscal.Create;
begin

end;

function TModelNotaFiscal.Criar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Criar');
end;

destructor TModelNotaFiscal.Destroy;
begin

  inherited;
end;

function TModelNotaFiscal.Display(Value: TEvDisplay): iNotaFiscal;
begin
  Result := Self;
  FDisplay := Value;
end;

function TModelNotaFiscal.Email: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Email');
end;

function TModelNotaFiscal.Enviar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Enviar');
end;

function TModelNotaFiscal.EnviarNotaFiscal: iNotaFiscal;
begin
  TModelNotaFiscalInvoker.New
    .Add(TModelNotaFiscalCriar.New(Self))
    .Add(TModelNotaFiscalValidar.New(Self))
    .Add(TModelNotaFiscalEnviar.New(Self))
    .Add(TModelNotaFiscalGravar.New(Self))
    .Add(TModelNotaFiscalEmail.New(Self))
  .Execute;
end;

function TModelNotaFiscal.EnviarNotaSemEmail: iNotaFiscal;
begin
  TModelNotaFiscalInvoker.New
    .Add(TModelNotaFiscalCriar.New(Self))
    .Add(TModelNotaFiscalValidar.New(Self))
    .Add(TModelNotaFiscalEnviar.New(Self))
    .Add(TModelNotaFiscalGravar.New(Self))
  .Execute;
end;

function TModelNotaFiscal.Gravar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Gravar');
end;

class function TModelNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TModelNotaFiscal.Validar: iNotaFiscal;
begin
  Result := Self;
  FDisplay('Nota Fiscal - Validar');
end;

end.
