// �ltal�nos t�pusok
unit UTypes;

interface

type
  // t�pus az adatcser�hez
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
