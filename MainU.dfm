object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 116
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCustomAuth: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    ExplicitWidth = 517
    object edtDomain: TLabeledEdit
      Left = 8
      Top = 32
      Width = 124
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'Domain'
      TabOrder = 0
    end
    object edtUserName: TLabeledEdit
      Left = 138
      Top = 32
      Width = 124
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'UserName'
      TabOrder = 1
    end
    object edtUserPass: TLabeledEdit
      Left = 267
      Top = 32
      Width = 124
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Password'
      PasswordChar = '*'
      TabOrder = 2
    end
    object btnAuthenticate: TButton
      Left = 397
      Top = 27
      Width = 85
      Height = 25
      Caption = 'Authenticate'
      TabOrder = 3
      OnClick = btnAuthenticateClick
    end
    object LblLDAP: TLabeledEdit
      Left = 8
      Top = 70
      Width = 383
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'LDAP'
      TabOrder = 4
    end
  end
end
