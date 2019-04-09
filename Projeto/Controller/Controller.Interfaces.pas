{*******************************************************}
{                                                       }
{       Projeto Teste Pós-Delphi                        }
{                                                       }
{       Copyright (C) 2019 Unoesc                       }
{                                                       }
{*******************************************************}
unit Controller.Interfaces;

interface

uses
  Model.Cadastro.Interfaces,
  Model.Iterator.Interfaces;

type

  iControllerCadastro<T> = interface
    ['{F916E922-D040-4374-AFF9-FB8BF0ED3918}']
    function Entidade   : iModelCadastro<T>;
  end;

  iProxyControllerPermissao = interface
    ['{92BB490D-C21B-40B0-9A11-37E8F1E8490F}']
    function PermitePesquisa(aValue : Boolean) : Boolean;
  end;

  iControllerPermissao = interface
    ['{873758DE-B11A-4138-AFD4-A7043896EC41}']
    function PermitePesquisa(aValue : Boolean) : Boolean;
  end;

implementation

end.
