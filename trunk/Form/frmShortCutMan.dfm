object ShortCutManForm: TShortCutManForm
  Left = 0
  Top = 0
  Caption = 'ShortCut Manager'
  ClientHeight = 416
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    592
    416)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel0: TBitBtn
    Left = 509
    Top = 383
    Width = 75
    Height = 25
    Hint = 'Cancel all modification'
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    Kind = bkCancel
  end
  object btnOK: TBitBtn
    Left = 428
    Top = 383
    Width = 75
    Height = 25
    Hint = 'Save and close this window'
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    Default = True
    ModalResult = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object lvShortCut: TListView
    Left = 0
    Top = 28
    Width = 592
    Height = 369
    Align = alClient
    Columns = <
      item
        Caption = 'ShortCut'
        Width = 100
      end
      item
        Caption = 'Name'
        Width = 100
      end
      item
        Caption = 'Param Type'
        Width = 100
      end
      item
        Caption = 'Command Line'
        Width = 400
      end>
    DragMode = dmAutomatic
    FlatScrollBars = True
    FullDrag = True
    GridLines = True
    HideSelection = False
    RowSelect = True
    ParentShowHint = False
    PopupMenu = pmShortCutMan
    ShowHint = True
    SmallImages = ilShortCutMan
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = actEditExecute
    OnEdited = lvShortCutEdited
    OnEditing = lvShortCutEditing
    OnDragDrop = lvShortCutDragDrop
    OnDragOver = lvShortCutDragOver
    OnKeyDown = lvShortCutKeyDown
    OnKeyPress = lvShortCutKeyPress
    OnMouseDown = lvShortCutMouseDown
  end
  object tlbShortCutMan: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 586
    Height = 22
    ButtonWidth = 83
    Caption = 'tlbShortCutMan'
    Images = ilShortCutMan
    List = True
    AllowTextButtons = True
    TabOrder = 2
    object btnAdd: TToolButton
      Left = 0
      Top = 0
      Hint = 'Add new ShortCut item'
      Action = actAdd
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
    object btnEdit: TToolButton
      Left = 52
      Top = 0
      Hint = 'Edit this ShortCut item'
      Action = actEdit
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
    object btnDelete: TToolButton
      Left = 111
      Top = 0
      Hint = 'Delete this ShortCut item'
      Action = actDelete
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
    object btnValidate: TToolButton
      Left = 184
      Top = 0
      Hint = 'Validate all ShortCuts and remove invalid ones'
      Action = actValidate
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
    object btn1: TToolButton
      Left = 271
      Top = 0
      Width = 8
      Caption = 'btn1'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object btnHelp: TToolButton
      Left = 279
      Top = 0
      Action = actHelp
      Style = tbsTextButton
      Visible = False
    end
    object btnClose: TToolButton
      Left = 338
      Top = 0
      Hint = 'Save and close'
      Action = actClose
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
    object btnCancel: TToolButton
      Left = 404
      Top = 0
      Hint = 'Not save and close'
      Action = actCancel
      ParentShowHint = False
      ShowHint = True
      Style = tbsTextButton
    end
  end
  object statShortCutMan: TStatusBar
    Left = 0
    Top = 397
    Width = 592
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object actlstShortCut: TActionList
    Images = ilShortCutMan
    Left = 152
    Top = 104
    object actAdd: TAction
      Caption = '&Add'
      ImageIndex = 3
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = '&Edit'
      ImageIndex = 4
      OnExecute = actEditExecute
    end
    object actDelete: TAction
      Caption = '&Delete'
      ImageIndex = 5
      OnExecute = actDeleteExecute
    end
    object actValidate: TAction
      Caption = '&Validate'
      ImageIndex = 6
      OnExecute = actValidateExecute
    end
    object actHelp: TAction
      Caption = '&Help'
      ImageIndex = 7
      OnExecute = actHelpExecute
    end
    object actClose: TAction
      Caption = '&Close'
      ImageIndex = 8
      OnExecute = actCloseExecute
    end
    object actCancel: TAction
      Caption = 'Ca&ncel'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  object ilShortCutMan: TImageList
    Left = 184
    Top = 104
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000ECECECFFDADADAFFDADADAFFD9D9
      D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFDADA
      DAFFD9D9D9FFD9D9D9FFDDDDDDFFFAFAFAFF0000000000000000000000000000
      0000FEFEFEFFF5F5F5FFE8E8E8FFE1E1E1FFE3E3E3FFEEEEEEFFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7CFF3A3A3AFF3A3A3AFF5151
      51FF515151FF515151FF515151FF515151FF515151FF515151FF515151FF5151
      51FF464646FF3A3A3AFF3C3C3CFFEDEDEDFF000000000000000000000000F4F4
      F4FFC6C6C6FF7A7AA6FF4D4DB5FF3939C6FF4040BFFF5E5EACFFA6A6AFFFE0E0
      E0FFFDFDFDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF595959FF797979FFCACA
      CAFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
      BDFF1F1F1FFF595959FF797979FFECECECFF0000000000000000ECECECFF8686
      AEFF494ACEFF6263D5FF5152D0FF3E3FCBFF4647CDFF6061D4FF5758D2FF3A3A
      C9FFCACACAFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF5D5D5DFF7D7D7DFFD1D1
      D1FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FF1F1F1FFF5D5D5DFF7D7D7DFFECECECFF00000000F4F4F4FF6F6FB6FF5F61
      D5FF4143CDFF4143CDFF4143CDFF4143CDFF4143CDFF4143CDFF4143CDFF5A5B
      D3FF494ACEFFD2D2D2FFFEFEFEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF616161FF808080FFD9D9
      D9FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFF1F1F1FFF616161FF808080FFECECECFFFEFEFEFF9E9EC6FF6466D7FF474B
      D1FF474BD1FF474BD1FF474BD1FF474BD1FF474BD1FF474BD1FF474BD1FF474B
      D1FF575BD5FF4647CDFFF0F0F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF676767FF858585FFE1E1
      E1FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FF1F1F1FFF676767FF858585FFECECECFFF5F5F5FF5052D1FF4F55D5FF4F55
      D5FF4F55D5FFFFFFFFFF4F55D5FF4F55D5FF4F55D5FF9599E6FF9599E6FF4F55
      D5FF4F55D5FF7277DDFF8E8ECBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF6C6C6CFF898989FFE8E8
      E8FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FF1F1F1FFF6C6C6CFF898989FFECECECFFB1B1DEFF797FE1FF575FDAFF575F
      DAFFFFFFFFFFFFFFFFFFFFFFFFFF575FDAFF9A9FE9FFFFFFFFFFFFFFFFFF575F
      DAFF575FDAFF575FDAFF4B4DD0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF727272FF8D8D8DFFEFEF
      EFFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFF1F1F1FFF727272FF8D8D8DFFECECECFF6666CEFF717AE3FF5F69DFFF5F69
      DFFF5F69DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA5ECFF5F69
      DFFF5F69DFFF5F69DFFF6B71DDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF787878FF929292FFFAFA
      FAFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFF212121FF787878FF929292FFECECECFF3D3DC8FF6A76E4FF6874E4FF6874
      E4FF6874E4FF6874E4FFFFFFFFFFFFFFFFFFFFFFFFFFA4ACEFFF6874E4FF6874
      E4FF6874E4FF6874E4FF838DE8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF7E7E7EFF979797FF9797
      97FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9797
      97FF979797FF7D7D7DFF979797FFECECECFF4F4FCCFF7B89EAFF707FE8FF707F
      E8FF707FE8FFA9B2F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707FE8FF707F
      E8FF707FE8FF7281E8FF828CE8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF838383FF838383FF8383
      83FF838383FF838383FF838383FF838383FF838383FF838383FF838383FF8383
      83FF838383FF838383FF9C9C9CFFECECECFF9292DFFF96A3F1FF7989EDFF7889
      EDFFAEB8F4FFFFFFFFFFFFFFFFFFAEB8F4FFFFFFFFFFFFFFFFFFFFFFFFFF7889
      EDFF7889EDFF7D8EEEFF6870DEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF888888FF888888FFB1B1
      B1FFC6C6C6FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFC6C6C6FFB1B1
      B1FF888888FF888888FFA0A0A0FFECECECFFF4F4FBFF8893EBFF8699F3FF8093
      F2FFB3BEF7FFFFFFFFFFB3BEF7FF8093F2FF8093F2FFFFFFFFFFFFFFFFFF8093
      F2FF8194F2FF9AA9F4FF3D3ECBFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF8E8E8EFF8E8E8EFFA5A5
      A5FFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFCACACAFFA5A5
      A5FF8E8E8EFF969696FFAAAAAAFFF4F4F4FF000000004042CCFFA9B8F8FF8B9F
      F6FF889DF6FF889DF6FF889DF6FF889DF6FF889DF6FF889DF6FF889DF6FF889D
      F6FF93A6F7FF8A94EAFFEFEFFAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF929292FF929292FFA8A8
      A8FFD9D9D9FFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD9D9D9FFA8A8
      A8FF9A9A9AFFBEBEBEFF9A9A9AFF000000000000000000000000696EDCFFADBE
      FBFF92A8FAFF8EA5FAFF8EA5FAFF8EA5FAFF8EA5FAFF8EA5FAFF8FA6FAFF9AAF
      FBFFAEBAF7FFA8A8E7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4AFF969696FF969696FFABAB
      ABFFE8E8E8FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE8E8E8FFABAB
      ABFFC0C0C0FF9A9A9AFF00000000000000000000000000000000000000005E62
      D7FFC5D2FEFFA7BBFDFF9BB2FDFF96AEFDFF98AFFDFFA0B5FDFFB8C7FEFF99A2
      EDFFA8A8E7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000565656FFCDCDCDFFD0D0D0FFC3C3
      C3FFFAFAFAFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFAFAFAFFC6C6
      C6FF9A9A9AFF0000000000000000000000000000000000000000000000000000
      0000AAAAE7FF6569D9FFA5ADF0FFCBD5FDFFBBC6F8FF888EE5FF3F40CBFFEFEF
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F7FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
      DFFFDFDFDFFFDFDFDFFFE7E7E7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7CBC7FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFF9F9
      F9FFF4F4F4FFEDEDEDFFE7E7E7FFE4E4E4FFE5E5E5FFE9E9E9FFF0F0F0FFF6F6
      F6FFFBFBFBFFFEFEFEFF0000000000000000000000000000000000000000B0B0
      B0FF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
      8FFF8F8F8FFF8F8F8FFF8F8F8FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5CBC5FF169C21FFA4B1A4FF0000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7FFE7E7E7FFD2D2
      D2FFBCBCBCFFA6A6A6FF9A8B80FFA48D79FFA39283FF9B9997FFAEAEAEFFC4C4
      C4FFDADADAFFEEEEEEFFFBFBFBFF000000000000000000000000000000008F8F
      8FFFBABABAFFBABABAFFBABABAFFBABABAFFBABABAFFBABABAFFBABABAFFBABA
      BAFFBABABAFFBABABAFFC8C8C8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B8B0FF1EA62DFF1FA92FFF1DA32CFFEFF2EFFF00000000000000000000
      000000000000000000000000000000000000FDFDFDFFEAEAEAFFD0D0D0FFB6B6
      B6FFE29F6AFFFEFCFAFFFFFFFFFFFFF5EEFFFFFBF9FFFFFFFFFFFFE4CDFFAB8E
      76FFC0C0C0FFDADADAFFF3F3F3FF000000000000000000000000000000008F8F
      8FFFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBCBCBCFFAAAAAAFF949DA2FFB9B9
      B9FFBDBDBDFFBDBDBDFFCACACAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000647E
      64FF28B33DFF29B43DFF29B43DFF29B43DFF1B9729FF00000000000000000000
      00000000000000000000000000000000000000000000F5F5F5FFD2CECBFFFBE9
      DCFFFCE4D1FFFAB075FFFCA75FFFFEA559FFFFB372FFFFCA9DFFFEC594FFFFFF
      FFFFE9A772FFEAEAEAFFFAFAFAFF000000000000000000000000000000008F8F
      8FFFC1C1C1FFC1C1C1FFC1C1C1FFBDBDBDFF919191FF82D1FFFFD2EFFFFFBAC3
      C8FFC1C1C1FFC1C1C1FFCDCDCDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9ECE9FF1C7B23FF33C1
      4DFF33C14DFF33C14DFF28B33CFF33C14DFF33C14DFF1F8328FF000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAE8DBFFF1B2
      85FFEF8B3FFFF49346FFF8994BFFFDCEA6FFFC9E50FFFC9E50FFFB9C4EFFFBC9
      A0FFFEFAF7FFE5A26EFF00000000000000000000000000000000000000008F8F
      8FFFC5C5C5FFC5C5C5FFC0C0C0FF8292A0FFA8DEFFFFEAF7FFFF82D1FFFFC5C5
      C5FFC5C5C5FFC5C5C5FFD1D1D1FF0000000000000000F3F3F8FFE2E2EFFFE2E2
      EFFFE2E2EFFFE2E2EFFFE2E2EFFFE2E2EFFFE2E2EFFFE2E2EFFFE2E2EFFFE2E2
      EFFFE2E2EFFFE2E2EFFFFCFCFDFF00000000236E28FF3BC959FF3DCD5DFF3DCD
      5DFF3DCD5DFF3CCB5AFF0D9213FF3DCD5DFF3DCD5DFF3DCD5DFF257D2CFF0000
      00000000000000000000000000000000000000000000E3935EFFF5D8C5FFE37A
      31FFE98439FFEF8B3FFFF5AB70FFFFFFFFFFF7A059FFF79649FFF59447FFF290
      43FFF4B382FFFFFFFFFFECE9E8FF000000000000000000000000000000008F8F
      8FFFCACACAFFC6C6C6FF8595A3FF58BBEDFFB5EEFDFFBEE7FFFFCACACAFFCACA
      CAFFCACACAFFCACACAFFD5D5D5FF0000000000000000252C91FF6390FDFF6390
      FDFF6390FDFF6390FDFF6390FDFF6390FDFF6390FDFF6390FDFF6390FDFF6390
      FDFF6390FDFF6390FDFFE2E2EFFF000000000B8D11FF23AD34FF47D96CFF47D9
      6CFF47D96CFF109618FF7DB17DFF23AC34FF47D96CFF47D96CFF47D96CFF277F
      30FF0000000000000000000000000000000000000000FEFCFBFFD66820FFDD72
      29FFE37A31FFE88237FFEC873CFFF3AC75FFF08D41FFF08D40FFEE8B3FFFEC87
      3BFFE98943FFF3C6A6FFE89C67FF000000000000000000000000000000008F8F
      8FFFCBCBCBFF8092A1FF3EB8F5FFB3EDFDFF97CCF0FFB9C7D4FFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFD9D9D9FF0000000000000000252C91FF1E50F4FF1D4D
      F3FF1B49F0FF1944EEFF163FEBFF143AE9FF1236E6FF1235E6FF1235E6FF1235
      E6FF1235E6FF5686FDFFE2E2EFFF000000003F9140FF0C9112FF0D9213FF35C3
      50FF45D769FF228625FF000000000A870EFF4FE378FF51E57BFF51E57BFF51E5
      7BFF2A9A3CFFF5F7F5FF0000000000000000F9EAE1FFFFFFFFFFD4651EFFD668
      20FFDC7027FFE1772DFFE78844FFFFFFFFFFE88237FFE88137FFE67F35FFE47C
      32FFE0762DFFE08243FFF5D7C4FF000000000000000000000000000000008C8C
      8CFF8C9CA9FF3EB8F5FFB3EDFDFF8ACBF8FFBDCCD8FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFDDDDDDFF0000000000000000252C91FF235AF9FF2258
      F8FF2053F6FF1D4EF3FF1B49F1FF1944EEFF1740ECFF143BE9FF1236E6FF1235
      E6FF1235E6FF749DFDFFE2E2EFFF0000000000000000F7FAF7FF1E8420FF0C91
      12FF0C9112FF0000000000000000CDE0CDFF0E9415FF59EF88FF59EF88FF59EF
      88FF59EF88FF4BD972FF7C8A7CFF00000000F4D8C6FFF7E2D5FFD77130FFE29A
      6BFFE49F73FFE59C6CFFE69965FFFFFFFFFFFEFEFEFFE48A4CFFE18241FFDD77
      33FFD86B24FFDB7E42FFFDF9F7FF000000000000000000000000FAFAFAFF6070
      7DFF3EB8F5FFB3EDFDFF8ACBF8FFB4CBDEFFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD9D9D9FFD9D9D9FFE1E1E1FF0000000000000000252C91FF5587FEFF5485
      FDFF5282FCFF517EFAFF4F7BF7FF4D77F6FF4972F4FF456CF2FF4167F0FF3D61
      EEFF395CECFF95B8FDFFE2E2EFFF00000000000000000000000000000000D7E7
      D7FF5DA05EFF000000000000000000000000268728FF2BB641FF60F893FF60F8
      93FF60F893FF60F893FF60F893FFC8DCC8FFF4DBCAFFF9ECE3FFE8B08CFFE8AE
      89FFE6A77FFFE6A67DFFE29A6CFFE29463FFFEFDFDFFFFFFFFFFDB8045FFD978
      3AFFD77130FFD87435FFFBF1EAFF0000000000000000FAFAFAFFBBBBBBFF43B9
      F4FFB3EDFDFF8ACBF8FFC5D4E1FFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFFDEDEDEFFDEDEDEFFE5E5E5FF00000000000000005E62ABFF252C91FF252C
      91FF252C91FF252C91FF252C91FF252C91FF252C91FF252C91FF252C91FF252C
      91FF252C91FF252C91FFF3F3F8FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B8C10FF4BDD71FF65FE
      9AFF65FE9AFF65FE9AFF65FE9AFFC9DDC9FFFDF9F7FFFFFFFFFFE6A880FFEAB7
      97FFEAB491FFFFFFFFFFE8AC87FFE39D6FFFE19665FFFFFFFFFFE5A47BFFDB81
      47FFDA7A3DFFD97A3CFFECBC9EFF00000000FAFAFAFFBABABBFFCECECEFFF3F3
      F3FF8DCCF7FFC9D8E4FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFCBCBCBFFCBCB
      CBFFCBCBCBFFCCCCCCFFD0D0D0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDEADDFF0C9112FF55EA
      81FF66FF9BFF66FF9BFF65FE9AFF0000000000000000F5DDCEFFD97A3CFFEDC1
      A4FFEBBA9AFFFEFEFEFFFFFFFFFFEFC7AEFFFBF2ECFFFFFFFFFFE09260FFDE8A
      55FFDC834BFFFAEDE4FFEAB695FF00000000D7D5E7FFA398EFFFF3F3F4FFDBDB
      DBFFE0E0E0FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFD78307FFE2A1
      44FFE2A144FFE2A144FFD8860DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3C7A3FF0C91
      12FF4BDE72FF66FF9BFF61F894FF0000000000000000EEC6ACFFFEFDFDFFE9B2
      8EFFEEC3A8FFECBC9EFFF6E0D2FFFEFDFCFFFBF2ECFFE7AA84FFE29A6CFFE194
      62FFDB8045FFF8E8DDFF00000000000000007C6DE8FFEAE7FCFFBCB4F4FF9494
      95FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFD78307FFE7A3
      47FFF0C489FFD98914FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBC
      8FFF0C9112FF23AC34FF65FE9AFF000000000000000000000000E09361FFFBF2
      ECFFE4A074FFF2D1BCFFEDBFA1FFEBB897FFE9B18DFFE7AB85FFE7AA82FFDB7E
      43FFFEFEFEFFE9DED7FF0000000000000000000000008476EAFFF0EFFCFF8F8F
      8FFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFD78307FFF9D5
      ABFFDA8B17FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9D5B9FF0C9012FF0D9213FF00000000000000000000000000000000E194
      63FFFFFFFFFFE9B18DFFDB7D42FFE29767FFDE8A54FFD87536FFF8E9DFFFF9EA
      E1FFE9DDD6FF0000000000000000000000000000000000000000000000008F8F
      8FFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFDD962DFFDB8C
      19FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000208522FF000000000000000000000000000000000000
      0000DEDAD7FFE19564FFF6E1D3FFFFFFFFFFFDFAF8FFEEC4A8FFC78D67FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050223400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFFFDFDFDFFFBFBFBFFF8F8F8FFCCCCCCFFB1B1B1FFA9A9A9FFB0B0B0FFE0E0
      E0FF000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E7FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFF7F7F7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB9F72007A433200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFFF9F9
      F9FFF2F2F2FFE9E9E9FF9D9D9DFFEDEDEDFFF7F7F7FFD5D5D5FFD4D4D4FFD3D3
      D3FFB5B5B5FF0000000000000000000000000000000000000000000000000000
      000000000000009900FF009900FF009900FF009900FF009900FF5CB65CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDAA8D00EBC39B0086554A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFAFAFAFFEFEF
      EFFFDFDFDFFFAEAEAEFFC6C6C6FFDBDBDBFFBCBCBCFF9D9D9DFFAFAFAFFFD0D0
      D0FF8B8B8BFFFBFBFBFF00000000000000000000000000000000000000000000
      00000000000036B139FF059D08FF059D08FF059D08FF059D08FF009900FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000085626D008C605300A37B6500C4A38200EBC39B00B18868004D1924005022
      3400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFDFFF7F7F7FFE8E8
      E8FFD4D4D4FFA8A8A8FFA6A6A6FF858585FF7A7A7AFF7A7B7AFF7D7D7DFF7070
      70FF898989FFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000003BB53FFF0AA30FFF0AA30FFF0AA30FFF0BA310FF009900FF0000
      0000000000000000000000000000000000000000000000000000B2989200B89B
      7E00C4A78A00D0AF8D00DDBA9600EEC9A400FCD4AE00DDBA9600C4A78A00BA96
      73004D1924000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFF8F8F8FFECEC
      ECFFDADADAFFC7C7C7FF8C8C8CFF7D7D7DFF868686FF828282FF848484FF7D7D
      7DFF9D9D9DFF0000000000000000000000000000000000000000000000000000
      00000000000041BB47FF11AA19FF11AA19FF11AA19FF12AA1AFF009900FF0000
      00000000000000000000000000000000000000000000BB998900C3AB9400DDC2
      A700F9D8B800F2CFAE00D17B4C00CF825600E7986A00CF825600F9D5B100E0BD
      9B00C4A78A0074413F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFFFCFCFCFFF5F5
      F5FFE9E9E9FFDADADAFF939393FF868686FFA9A9A9FF999999FF868686FF8E8E
      8EFFE4E4E4FF000000000000000000000000E7E7E7FF9F9F9FFF9F9F9FFF9F9F
      9FFF9F9F9FFF47C151FF19B225FF19B225FF19B225FF1AB226FF009900FF9F9F
      9FFF9F9F9FFF9F9F9FFFB7B7B7FF00000000B79F8800C1AE9B00E9D0B800FFE3
      C700FFE2C400FFE1C300C0917000952E0000873A1400FFE9CB00FFDDBA00FFDD
      BA00E8C7A700C7AB8F004D192400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFFFBFB
      FBFFB2B1B1FF92A0ACFF94BACEFF94B5CAFF919AA4FF9A9A9AFF939293FFAEAE
      AEFFD5D5D5FF000000000000000000000000009900FF4DC85BFF4DC85BFF4DC8
      5BFF4DC85BFF4DC85BFF21BA32FF21BA32FF21BA32FF21BA32FF4DC85BFF4DC8
      5BFF4DC85BFF4DC85BFF4DC85BFF00000000BCA79900E4CDB500FFE7D100FFE6
      CD00FFE5CB00FFE4C900C4997B009A330000A1562E00FFE4C900FFE1C300FFE0
      C000FFE0C000E2C3AB00C4A38200502234000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABAC
      AEFF70BBDCFF4CB2CBFF4098AFFF41A1BAFF4BBEE4FF70BCE3FF9CA4ADFF9696
      96FFCFCFCFFF000000000000000000000000009900FF2BC340FF2AC33FFF2AC3
      3FFF2AC33FFF2AC33FFF2AC33FFF2AC33FFF2AC33FFF2AC33FFF2AC33FFF2AC3
      3FFF2AC33FFF2AC33FFF55CF65FF00000000D0C1B200F9E6D300FFEAD500FFE9
      D400FFE9D200FFE8D100C4997B009A330000A0583100FFE7CE00FFE4C900FFE3
      C900FFE3C700F8DCC100D4BBA500663D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAEAFF7AB0
      CEFF3C8DA3FF42A2C1FF50CCF1FF4EC3EBFF3F94B8FF4AAFDBFF56B7EDFF9FAB
      B7FFC5C5C5FF000000000000000000000000009900FF34CC4EFF33CC4DFF33CC
      4DFF33CC4DFF33CC4DFF33CC4DFF33CC4DFF33CC4DFF33CC4DFF33CC4DFF33CC
      4DFF33CC4DFF33CC4DFF5CD671FF00000000D6CABE00FFEFDF00FFEEDD00FFED
      DC00FFEDDB00FFEBD800C49C81009A330000A0583100FFEBD700FFE7D100FFE7
      CE00FFE6CD00FFE7CE00DDC9B300663D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C4C4FF51AD
      D9FF357C99FF45AED6FF3586A7FF3D92BAFF317195FF3984B0FF4CAFF0FF5CA8
      E5FF999A9BFF000000000000000000000000009900FF3DD55BFF3CD55AFF3CD5
      5AFF3CD55AFF3CD55AFF3CD55AFF3CD55AFF3CD55AFF3CD55AFF3CD55AFF3CD5
      5AFF3CD55AFF3CD55AFF63DD7BFF00000000DCCFC700FFF4E700FFF2E500FFF1
      E200FFF0E000FFF1E200A9633F009C340000A25A3500FFF0DC00FFEBD700FFEB
      D700FFE9D400FFEFD900DDC9B300694151000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6FF4AA7
      DBFF347B9FFF30789DFF46AEE8FF4198D0FF2F6B97FF459CE5FF2B6293FF469F
      F0FF95ADC9FFE5E5E5FF0000000000000000009900FF83E99AFF8FEBA3FF8FEB
      A3FF89EA9FFF5FE37CFF45DE67FF45DE67FF45DE67FF4CDF6CFF78E791FF8FEB
      A3FF8FEBA3FF8FEBA3FF72E68BFF00000000DDD7D100FBF4EC00FFF4EC00FFF3
      E900FFF3E900DAC6B600A37B6500996E5F00A37B6500FFF2E500FFEFDF00FFEE
      DD00FFEDDB00FCF0DF00E4D2C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECECFF69A1
      CDFF598DAEFF5DA4D7FF4D8FBFFF51AAF3FF3375B0FF3A83CEFF3373BBFF316F
      B7FF7FAADCFFCACACAFF000000000000000069C369FF009900FF009900FF0099
      00FF009900FF95F0ACFF4DE674FF4DE674FF4DE674FF5EE881FF009900FF0099
      00FF009900FF009900FF009900FF00000000E3DCD600EEE8E200FFFFFD00FFF8
      F100FFF8F100FFF7EE00FFFBF300F1DBC700FFF8EE00FFF3E900FFF4E700FFF1
      E400FFFFFB00F2E4D500AE8B8000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000939E
      ABFF7FB5E5FF779FC5FF79ABDAFF769FCAFF719CCDFF55759EFF5993E1FF456C
      A1FF87ACDBFFD7D7D7FF00000000000000000000000000000000000000000000
      00000000000077F199FF55EE80FF55EE80FF55EE80FF56EE80FF009900FF0000
      00000000000000000000000000000000000000000000E3E2DF00F6F1EB00FFFF
      FF00FFFCF700FFFCF7008E503100C5612F00A9633F00FFFBF300FFF8F100FFFF
      FF00F6ECE400EADBCD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0FF829BB7FF99BEE8FF94B1D4FF98C0F0FF98BEF1FF98BFF6FF91ACD4FF8BA7
      D1FF9CA9BBFFFCFCFCFF00000000000000000000000000000000000000000000
      0000000000007DF7A1FF5CF58AFF5CF58AFF5CF58AFF5DF58AFF009900FF0000
      0000000000000000000000000000000000000000000000000000E7E4E100F2F2
      F100FFFFFD00FFFFFF00BCA79900530F0000C9B6A600FFFFFF00FEFDFA00F6F1
      EB00E2D5CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEAEAFF92A1B5FF9DBDE7FFB3C8E6FFB1C6E3FFB0C3DEFFA7BEDFFF90A8
      C9FFCBCBCBFF0000000000000000000000000000000000000000000000000000
      00000000000081FCA8FF62FB92FF62FB92FF62FB92FF63FB92FF009900FF0000
      000000000000000000000000000000000000000000000000000000000000F6F1
      EB00EDEBE900F2F2F100FCFCFB00FFFFFF00FCFCFB00F5F4F200F0EBE600F7F0
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3C4C6FF9CA7B5FF9AA9BEFF98A8BDFFA1A8B1FFDBDB
      DBFF000000000000000000000000000000000000000000000000000000000000
      000000000000C5FFD8FFECFFF2FFECFFF2FFECFFF2FFE6FFEEFF009900FF0000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF000000F01F000000000000E00700000000
      0000C00300000000000080010000000000000001000000000000000100000000
      0000000100000000000000010000000000000001000000000000000100000000
      0000000100000000000000010000000000008001000000000001C00300000000
      0003E007000000000007F00F00000000E001FFFFFDFFC003E001FFFFF8FF8001
      E001FFFFF07F0001E001FFFFE07F8001E001FFFF803F8003E0018001001F8001
      E0018001000F8001E001800102030001E001800186010001C0018001E7000001
      80018001FF8000010001FFFFFF8180010001FFFFFFC180030003FFFFFFE1C003
      8007FFFFFFF1E007E00FFFFFFFFDF01FFFBFFFFFE00FF81FFF3FFFFFC007F81F
      FE3FFBFF8003F81FF00FF9FF8003F81FC007F8FF8007F81F8003F87F80070001
      0001F83FC00700010000F81FE00700010000F81FC00700010000F83FC0070001
      0000F87FC00300010001F8FFC00300010001F9FFE003F81F8003FBFFE003F81F
      C007FFFFF007F81FE00FFFFFFC0FF81F}
  end
  object pmShortCutMan: TPopupMenu
    Left = 120
    Top = 104
    object mniCut: TMenuItem
      Action = actAdd
    end
    object mniInsert: TMenuItem
      Action = actEdit
    end
    object mniDelete: TMenuItem
      Action = actDelete
    end
  end
end
