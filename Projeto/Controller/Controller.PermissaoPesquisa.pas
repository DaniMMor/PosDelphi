unit Controller.PermissaoPesquisa;

interface

uses Controller.Interfaces, Vcl.Dialogs;

Type

  TControllerPermissaoPesquisa = class (TInterfacedObject, iControllerPermissao)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerPermissao;
      function PermitePesquisa(aValue : Boolean) : Boolean;

  end;

implementation

{ TControllerPermissaoPesquisa }

constructor TControllerPermissaoPesquisa.Create;
begin

end;

destructor TControllerPermissaoPesquisa.Destroy;
begin

  inherited;
end;

class function TControllerPermissaoPesquisa.New: iControllerPermissao;
begin
   Result := Self.Create;
end;

function TControllerPermissaoPesquisa.PermitePesquisa(aValue: Boolean): Boolean;
begin
   if aValue then
   begin
     Result := aValue;
   end
   else
   begin
    Result := False;

    ShowMessage('Pesquisa não permitida. Verifique a permissão no checkbox Permite fazer a pesquisa.');
   end;
end;

end.
