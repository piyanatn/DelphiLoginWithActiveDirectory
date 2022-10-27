unit MainU;

interface

uses
 ActiveDirectory.Types,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleServer, ActiveDirectory.Winapi.TLB;

type
  TMainForm = class(TForm)
    pnlCustomAuth: TPanel;
    edtDomain: TLabeledEdit;
    edtUserName: TLabeledEdit;
    edtUserPass: TLabeledEdit;
    btnAuthenticate: TButton;
    LblLDAP: TLabeledEdit;
    procedure btnAuthenticateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation
uses
  ActiveDirectory.Client;
{$R *.dfm}

procedure TMainForm.btnAuthenticateClick(Sender: TObject);
var
   Resultado: Boolean;
   Fullname: String;
   UserInfo: TADSIUserInfo;
begin
if edtUserPass.Text <> '' then
  begin
    try
       Resultado :=  ActiveDirectoryClient.AuthenticateUser(edtDomain.Text, edtUserName.Text, edtUserPass.Text) ;
    except
       on E: Exception do
        begin
          showmessage(E.Message);
          exit;
        end;
    end;
      Resultado := ActiveDirectoryClient.GetUserInfo(edtDomain.Text, edtUserName.Text, UserInfo);
      showmessage('Login สำเร็จ ยินดีต้อนรับคุณ '+UserInfo.UserName);

  end
else
  begin
      showmessage('กรุณากรอกรหัสผ่าน');
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  edtUserName.Text :=   ActiveDirectoryClient.GetCurrentUserName;
  edtDomain.Text   :=   ActiveDirectoryClient.GetCurrentDomainName(edtUserName.Text);
  LblLDAP.Text       :=   ActiveDirectoryClient.GetCurrentLDAPDomainName(edtDomain.Text);
end;

end.
