program TalkTelecom_3;

uses
  Vcl.Forms,
  uConexao in 'uConexao.pas' {FConexao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConexao, FConexao);
  Application.Run;
end.
