unit uConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, TalkManager_Control_TLB, Vcl.StdCtrls;

type
  TFConexao = class(TForm)
    Btn_Logar             : TButton;
    Edt_Ramal             : TEdit;
    Lb_Ramal              : TLabel;
    Edt_ID                : TEdit;
    Lb_ID                 : TLabel;
    Edt_Senha             : TEdit;
    Lb_Senha              : TLabel;
    Edt_IP                : TEdit;
    Lb_IP                 : TLabel;
    Edt_Porta             : TEdit;
    Lb_Porta              : TLabel;
    Lb_Status             : TLabel;
    Btn_BuscarIntervalos  : TButton;
    Cb_Intervalos         : TComboBox;
    Btn_NaoDisponivel     : TButton;
    Btn_LiberarPausa      : TButton;
    Btn_Deslogar          : TButton;
    Btn_SolicitaIntervalo : TButton;
    procedure FormCreate(Sender: TObject);
    procedure Btn_LogarClick(Sender: TObject);
    procedure Btn_LiberarPausaClick(Sender: TObject);
    procedure Btn_NaoDisponivelClick(Sender: TObject);
    procedure Btn_BuscarIntervalosClick(Sender: TObject);
    procedure Btn_DeslogarClick(Sender: TObject);
    procedure Btn_SolicitaIntervaloClick(Sender: TObject);
  private
    { Private declarations }
    TalkManager : TTalkManager_Button;
    procedure TalkManageriRetornoStatusGeral(Sender: TObject; var iStatus: WideString);
    procedure TalkManageriRetornoIntervalosDescricao(ASender: TObject; var iRamalStatusDetalheId: OleVariant;
      var iDescricao: WideString; var iProdutivo: OleVariant);
    procedure TalkManageriRetornoLogon(Sender: TObject; var iStrRamal, iStrID, iStrUltimoStatus, iStrUsuario, iStrFila,
      iStrNAtendidas, iStrRecados, iStrDialogos, iStrSigaMe: OleVariant);
    procedure TalkManageriRetornoDadosPower(ASender: TObject; var Cod_Cli_Nome, Contato_Endereco, Cidade, Estado, CEP,
      Numero_Servico, Numero_Cliente, Cod_Campanha: OleVariant);
  public
    { Public declarations }
  end;

var
  FConexao: TFConexao;

implementation

{$R *.dfm}

procedure TFConexao.Btn_LogarClick(Sender: TObject);
var
  iID,
  iIP,
  iPort,
  iSenha,
  iRamal : WideString;
begin
  if (Edt_ID.Text    <> EmptyStr) and
     (Edt_IP.Text    <> EmptyStr) and
     (Edt_Porta.Text <> EmptyStr) and
     (Edt_Senha.Text <> EmptyStr) and
     (Edt_Ramal.Text <> EmptyStr) then
  begin
    iID    := Edt_ID.Text;
    iIP    := Edt_IP.Text;
    iPort  := Edt_Porta.Text;
    iSenha := Edt_Senha.Text;
    iRamal := Edt_Ramal.Text;

    TalkManager.met_Logon_Automatico(iRamal, iID, iSenha, iIP, iPort);
  end
  else
  begin
    ShowMessage('Favor Preencher Todos os Campos');
  end;
end;

procedure TFConexao.Btn_NaoDisponivelClick(Sender: TObject);
begin
  TalkManager.met_Agente_Nao_Disponivel;
end;

procedure TFConexao.Btn_SolicitaIntervaloClick(Sender: TObject);
var
  vCodigo : SmallInt;
begin
  vCodigo := StrToInt(Trim(Copy(Cb_Intervalos.Text,1,Pos('-',Cb_Intervalos.Text)-1)));
  TalkManager.met_Intervalo(vCodigo);
end;

procedure TFConexao.Btn_DeslogarClick(Sender: TObject);
begin
  TalkManager.met_Logoff;
end;

procedure TFConexao.Btn_LiberarPausaClick(Sender: TObject);
begin
  TalkManager.met_Libera_Pausa;
end;

procedure TFConexao.TalkManageriRetornoStatusGeral(Sender: TObject; var iStatus: WideString);
begin
  Lb_Status.Caption := iStatus;
end;

procedure TFConexao.TalkManageriRetornoLogon(Sender: TObject; var iStrRamal, iStrID, iStrUltimoStatus, iStrUsuario,
  iStrFila, iStrNAtendidas, iStrRecados, iStrDialogos, iStrSigaMe: OleVariant);
begin
  Lb_Status.Caption := iStrUltimoStatus;
end;

procedure TFConexao.Btn_BuscarIntervalosClick(Sender: TObject);
begin
  TalkManager.met_IntervaloDescricao;
end;

procedure TFConexao.TalkManageriRetornoIntervalosDescricao(ASender: TObject; var iRamalStatusDetalheId: OleVariant;
                                                           var iDescricao: WideString; var iProdutivo: OleVariant);
begin
  Cb_Intervalos.Items.Add(VarToStr(iRamalStatusDetalheId) + ' - ' + iDescricao + ' - ' + VarToStr(iProdutivo));
end;

procedure TFConexao.TalkManageriRetornoDadosPower(ASender: TObject; var Cod_Cli_Nome, Contato_Endereco, Cidade, Estado, CEP,
  Numero_Servico, Numero_Cliente, Cod_Campanha: OleVariant);
begin
  ShowMessage(VarToStr(Cod_Cli_Nome));
end;

procedure TFConexao.FormCreate(Sender: TObject);
begin
  TalkManager                               := TTalkManager_Button.Create(Application);
  TalkManager.OniRetornoStatusGeral         := TalkManageriRetornoStatusGeral;
  TalkManager.OniRetornoLogon               := TalkManageriRetornoLogon;
  TalkManager.OniRetornoIntervalosDescricao := TalkManageriRetornoIntervalosDescricao;
  TalkManager.OniRetornoDadosPower          := TalkManageriRetornoDadosPower;
end;

end.
