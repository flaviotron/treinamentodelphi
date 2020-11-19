unit UCaseEIF;

interface

type
  TCaseEIF = class
    private
    public
     class function TestarCase(tipo: Char):String;
     class function TestarIF(tipo: Char): String;
     function TestarCaseComInstancia(tipo: Char):String;
     function TestarIFComInstancia(tipo: Char): String;
  end;

implementation

{ TCaseEIF }

class function TCaseEIF.TestarCase(tipo: Char): String;
begin
  case tipo of
   'N': Result := '02';
   'F': Result := '03';
   'D': Result := '05';
   'A': Result := '06';
   'R': Result := '07';
   else Result := '02';
  end;
end;

function TCaseEIF.TestarCaseComInstancia(tipo: Char): String;
begin
  Result := TestarCase(tipo);
end;

class function TCaseEIF.TestarIF(tipo: Char): String;
begin
  if tipo = 'N' then
   Result := '02'
  else if tipo = 'F' then
   Result := '03'
  else if tipo = 'D' then
   Result := '05'
  else if tipo = 'A' then
   Result := '06'
  else if tipo = 'R' then
   Result := '07'
  else
   Result := '02';
end;

function TCaseEIF.TestarIFComInstancia(tipo: Char): String;
begin
  Result := TestarIF(tipo);
end;

end.
