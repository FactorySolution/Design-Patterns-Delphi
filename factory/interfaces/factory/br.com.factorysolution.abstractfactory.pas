unit br.com.factorysolution.abstractfactory;

interface

uses
  br.com.factorysolution.interfaces;

type
  TAbstractFactory = class(TInterfacedObject, IAbstractFactory)

  public
    class function New: IAbstractFactory;
    constructor Create;
    destructor Destroy; override;

    function GetColonia: ICerveja;
    function GetFanta: IRefrigerante;
    function GetGuarana: IRefrigerante;
    function GetSkol: ICerveja;
  end;

implementation

uses
  br.com.factorysolution.skol,
  br.com.factorysolution.guarana,
  br.com.factorysolution.fanta,
  br.com.factorysolution.colonia;



{ TAbstractFactory }

constructor TAbstractFactory.Create;
begin

end;

destructor TAbstractFactory.Destroy;
begin

  inherited;
end;

function TAbstractFactory.GetColonia: ICerveja;
begin
  Result := TColonia.new;
end;

function TAbstractFactory.GetFanta: IRefrigerante;
begin
  Result := TFanta.new;
end;

function TAbstractFactory.GetGuarana: IRefrigerante;
begin
  Result := TGuarana.new;
end;

function TAbstractFactory.GetSkol: ICerveja;
begin
  Result := TSkol.New;
end;

class function TAbstractFactory.New: IAbstractFactory;
begin
  Result := Self.Create;
end;

end.
