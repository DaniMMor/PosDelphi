unit Proxy.Controller.PermissaoPesquisa;

interface

uses Controller.Interfaces, Controller.PermissaoPesquisa, System.SysUtils;

Type
  TProxiControllerPermissaoPesquisa = class(TInterfacedObject, iProxyControllerPermissao)
    private
     FPermissaoPesquisa : iControllerPermissao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iProxyControllerPermissao;
      function PermitePesquisa(aValue : Boolean) : Boolean;
  end;


implementation

{ TControllerPermissaoPesquisa }

constructor TProxiControllerPermissaoPesquisa.Create;
begin
   FPermissaoPesquisa := TControllerPermissaoPesquisa.create;
end;

destructor TProxiControllerPermissaoPesquisa.Destroy;
begin

  inherited;
end;

class function TProxiControllerPermissaoPesquisa.New: iProxyControllerPermissao;
begin
   Result := Self.Create;
end;

function TProxiControllerPermissaoPesquisa.PermitePesquisa(aValue : boolean) : Boolean;
begin
   Result := FPermissaoPesquisa.PermitePesquisa(aValue);
end;

end.
