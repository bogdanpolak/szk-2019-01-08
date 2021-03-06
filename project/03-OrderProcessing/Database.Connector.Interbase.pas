unit Database.Connector.Interbase;

interface

uses
  Database.Connector,
  // FireDAC components ------------------------------
  FireDAC.Comp.Client,
  // FireDAC connection ------------------------------
  FireDAC.Stan.Def,
  // InterBase ------------------------------
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FBDef, FireDAC.Phys.FB,
  FireDAC.Phys.IBDef, FireDAC.Phys.IB;

type
  TInterbaseDatabaseConnector = class (TDatabaseConnector)
  public
    function GetNewConnection: TFDConnection; override;
  end;

implementation

function TInterbaseDatabaseConnector.GetNewConnection: TFDConnection;
begin
  Result := TFDConnection.Create(nil);
  Result.Open('FB_Demo');
{$IFDEF CONSOLEAPP}
  WriteLn('Interbase connection with IB_Demo created....');
{$ENDIF}
end;

end.
