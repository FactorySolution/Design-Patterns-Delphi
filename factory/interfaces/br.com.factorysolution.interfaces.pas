unit br.com.factorysolution.interfaces;

interface

type

  TTipoRefrigerante = (trGuarana, trFanta);

  IRefrigerante = interface
    ['{1819F297-7295-4F48-A465-121A78854D41}']
    function GetName: string;
  end;

  ICerveja = interface
    ['{443CCD20-6527-40FC-AFDF-491DB69C894B}']
    function GetName: string;
  end;


  IRefrigeranteFactory = interface
    ['{882C4989-93FC-4568-AB7B-6F7C933DEE64}']
    function GetRefrigerante(const ATipoRefrigerante: TTipoRefrigerante): IRefrigerante;
  end;


  IAbstractFactory = interface
    ['{00C1A9A6-DAD1-433F-8A85-8961E8B0F94A}']
    function GetFanta: IRefrigerante;
    function GetGuarana: IRefrigerante;
    function GetColonia: ICerveja;
    function GetSkol: ICerveja;
  end;


implementation

end.
