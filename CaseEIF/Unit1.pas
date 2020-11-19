unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtEntrada: TEdit;
    btnCase: TButton;
    edtSaida: TEdit;
    btnIF: TButton;
    lsbSaida: TListBox;
    lsbEntrada: TListBox;
    ckeComInstancia: TCheckBox;
    btnRobotizado: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    UmaThread: TButton;
    procedure btnCaseClick(Sender: TObject);
    procedure btnIFClick(Sender: TObject);
    procedure btnRobotizadoClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure UmaThreadClick(Sender: TObject);
  private
    procedure TestarCaseComInstancia;
    procedure TestarCaseSemInstancia;
    procedure TestarIFComInstancia;
    procedure TestarIFSemInstancia;
    procedure ProcessaThread;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UCaseEIF, StrUtils;


procedure TForm1.btnCaseClick(Sender: TObject);
begin
  case ckeComInstancia.Checked of
   True: TestarCaseComInstancia;
   False: TestarIFSemInstancia;
  end;
end;

procedure TForm1.TestarCaseComInstancia;
var
  CaseEIF: TCaseEIF;
  tipo: string;
begin
  CaseEIF := TCaseEIF.Create;
  try
    tipo := edtEntrada.Text;
    edtSaida.Text := CaseEIF.TestarCaseComInstancia(tipo[1]);
  finally
    CaseEIF.Free;
  end;
end;

procedure TForm1.TestarCaseSemInstancia;
var
  tipo: string;
begin
  tipo := edtEntrada.Text;
  edtSaida.Text := TCaseEIF.TestarCase(tipo[1]);
end;

procedure TForm1.btnIFClick(Sender: TObject);
begin
  case ckeComInstancia.Checked of
   True: TestarIFComInstancia;
   False: TestarIFSemInstancia;
  end;
end;

procedure TForm1.btnRobotizadoClick(Sender: TObject);
begin
  Timer1.Enabled := not Timer1.Enabled;
  label1.Caption := IfThen(Timer1.Enabled, 'Ligado', 'Desligado');
end;

procedure TForm1.TestarIFComInstancia;
var
  CaseEIF: TCaseEIF;
  tipo: string;
begin
  CaseEIF := TCaseEIF.Create;
  try
    tipo := edtEntrada.Text;
    edtSaida.Text := CaseEIF.TestarIFComInstancia(tipo[1]);
  finally
    CaseEIF.Free;
  end;
end;

procedure TForm1.TestarIFSemInstancia;
var
  tipo: string;
begin
  tipo := edtEntrada.Text;
  edtSaida.Text := TCaseEIF.TestarIF(tipo[1]);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  ProcessaThread;
end;

procedure TForm1.UmaThreadClick(Sender: TObject);
begin
  ProcessaThread;
end;

procedure TForm1.ProcessaThread;
var
  i: Integer;
begin
  for i := 0 to lsbEntrada.Count-1 do
   begin
    edtEntrada.Text := lsbEntrada.Items[i];
    btnCase.Click;
    btnIf.Click;
    lsbSaida.Items.Add(edtSaida.Text);
    Application.ProcessMessages;
    Sleep(500);
   end;
end;

end.
