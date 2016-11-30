// általános típusok
unit UTypes;

interface

type
  // típus az adatcseréhez
  TPartner = record
    Nev       : string;
    IRSZ      : Word;
    Telepules : string;
    Cim       : string;
    Telefon   : string;
  end;

  TFormMode = (
    fmInsert,
    fmEdit
  );

implementation

end.
