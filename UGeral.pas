unit UGeral;

interface

uses
  JvDBGrid, Vcl.DBGrids, FireDAC.Comp.Client;

procedure tryFreeAndNil(Obj: TObject); inline;

procedure sortColumn(AGrid: TJvDBGrid; ACol: TColumn); overload;

procedure sortColumn(Aqry: TFDQuery; ACol: TColumn); overload;

implementation

uses
  System.SysUtils;

procedure tryFreeAndNil(Obj: TObject);
begin
  try
    try
      if Assigned(Obj) then
        freeandnil(Obj);
    except

    end;
  finally
    Obj := nil;
  end;
end;

procedure sortColumn(AGrid: TJvDBGrid; ACol: TColumn);
begin
//nao está funcionando com o FD...
  if AGrid.SortedField = ACol.FieldName then
  begin
    if AGrid.SortMarker = smDown then
      AGrid.SortMarker := smUp
    else
      AGrid.SortMarker := smDown;
  end
  else
    AGrid.SortedField := ACol.FieldName;
end;

procedure sortColumn(Aqry: TFDQuery; ACol: TColumn);
begin
  if Aqry.IndexFieldNames = ACol.FieldName then
  begin
    try
      Aqry.IndexFieldNames := ACol.FieldName + ':D';
    except
      Aqry.IndexName := ACol.FieldName ;
    end;
  end
  else
    Aqry.IndexFieldNames := ACol.FieldName;
end;

end.

