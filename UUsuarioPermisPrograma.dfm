object FUsuarioPermisPrograma: TFUsuarioPermisPrograma
  Left = 0
  Top = 0
  Width = 976
  Height = 496
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pgUsuario: TUniPageControl
    Left = 0
    Top = 0
    Width = 976
    Height = 496
    Hint = ''
    ActivePage = tsUsuarioLista
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitTop = -35
    ExplicitWidth = 960
    ExplicitHeight = 531
    object tsUsuarioLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista de Usu'#225'rios'
      DesignSize = (
        968
        468)
      object dbSocio: TUniDBGrid
        Left = 0
        Top = 217
        Width = 968
        Height = 251
        Hint = ''
        DataSource = dsUsuarioMestre
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
        WebOptions.PageSize = 100
        LoadMask.Message = 'Carregando Dados...'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        OnCellClick = dbSocioCellClick
        OnColumnSort = dbSocioColumnSort
        OnFieldImage = dbSocioFieldImage
        Columns = <
          item
            FieldName = 'FC_IMG_VIS'
            Title.Caption = 'Vs'
            Width = 44
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_EDIT'
            Title.Caption = 'Ed'
            Width = 41
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_DEL'
            Title.Caption = 'Dl'
            Width = 41
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_PERM'
            Title.Caption = 'Pr'
            Width = 41
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'codUsuario'
            Title.Caption = 'C'#243'digo'
            Width = 124
            Sortable = True
          end
          item
            FieldName = 'nomeUsuario'
            Title.Caption = 'Nome Usu'#225'rio'
            Width = 348
            Sortable = True
          end
          item
            FieldName = 'email'
            Title.Caption = 'Email'
            Width = 240
            Sortable = True
          end
          item
            FieldName = 'telefone'
            Title.Caption = 'Telefone'
            Width = 100
            Sortable = True
          end>
      end
      object UniToolBar1: TUniToolBar
        Left = 0
        Top = 0
        Width = 968
        Height = 33
        Hint = ''
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        ExplicitTop = 2
        object UniToolButton3: TUniToolButton
          Left = 137
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton3'
          TabOrder = 6
        end
        object UniToolButton2: TUniToolButton
          Left = 145
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton2'
          TabOrder = 4
        end
        object UniToolButton1: TUniToolButton
          Left = 286
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton1'
          TabOrder = 2
        end
        object UniToolButton5: TUniToolButton
          Left = 427
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton5'
          TabOrder = 7
        end
        object UniToolButton7: TUniToolButton
          Left = 568
          Top = 0
          Width = 20
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton5'
          TabOrder = 9
        end
        object btAtualizarDados: TUniBitBtn
          Left = 153
          Top = 0
          Width = 133
          Height = 33
          Hint = ''
          Caption = 'ATUALIZAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 1
          OnClick = btAtualizarDadosClick
          ExplicitLeft = 155
          ExplicitTop = 2
        end
        object btFiltro: TUniBitBtn
          Left = 294
          Top = 0
          Width = 133
          Height = 33
          Hint = ''
          Caption = 'FILTRO'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 3
          Images = UniNativeImageList1
          ImageIndex = 10
          OnClick = btFiltroClick
        end
        object dnNaveg: TUniDBNavigator
          Left = 0
          Top = 0
          Width = 137
          Height = 33
          Hint = ''
          DataSource = dsUsuarioMestre
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 5
        end
        object btNovoUsuario: TUniBitBtn
          Left = 435
          Top = 0
          Width = 133
          Height = 33
          Hint = ''
          Caption = 'NOVO USU'#193'RIO'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 8
          Images = UniNativeImageList1
          ImageIndex = 7
          OnClick = btNovoUsuarioClick
          ExplicitLeft = 433
          ExplicitTop = 2
        end
        object btRelatCSV: TUniBitBtn
          Left = 588
          Top = 0
          Width = 33
          Height = 33
          Hint = ''
          Caption = ''
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 10
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Gerando Relat'#243'rio...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 14
          OnClick = btRelatCSVClick
          ExplicitLeft = 594
          ExplicitTop = 2
        end
      end
      object UniGroupBox1: TUniGroupBox
        Left = 0
        Top = 41
        Width = 968
        Height = 58
        Hint = ''
        Caption = 'Filtro R'#225'pido'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        object edtFiltroPesqRapida: TUniEdit
          Left = 8
          Top = 21
          Width = 425
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          TabOrder = 1
          EmptyText = 'Pesquisar'
          ClearButton = True
          OnChange = edtFiltroPesqRapidaChange
          OnKeyPress = edtFiltroPesqRapidaKeyPress
        end
        object cbCampoFiltro: TUniComboBox
          Left = 443
          Top = 21
          Width = 145
          Height = 27
          Hint = ''
          Style = csOwnerDrawFixed
          Text = 'Ambos os Campos'
          Items.Strings = (
            'Ambos os Campos'
            'C'#243'digo'
            'Nome')
          ItemIndex = 0
          TabOrder = 2
          OnChange = cbCampoFiltroChange
        end
      end
      object UniPanel1: TUniPanel
        Left = 0
        Top = 33
        Width = 968
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        BorderStyle = ubsNone
        Caption = ''
      end
      object gbFiltroParam: TUniGroupBox
        Left = 0
        Top = 107
        Width = 968
        Height = 102
        Hint = ''
        Visible = False
        Caption = 'Par'#226'metros'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        DesignSize = (
          968
          102)
        object imgDel: TUniImage
          Left = 719
          Top = -19
          Width = 20
          Height = 25
          Hint = ''
          Visible = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000002944944415478DA8D926B489361
            14C7FFEFFBCE8DD5A62EE7A6A32C1DD5423FA96168999426267431292F11E294
            F043691733F08B042551E007294CA1D22849588844DF14444AF3962EB39B976D
            799B9AEFB6C8B6DCBBA7C7496560B5C3391F0EE7F9FFCEF33CE7308410300C83
            65BB90A4D032223C5729A56AA78B6061C165F5E348C28D367E146B9857BB1A70
            768F6228215E19A950A8C13B80DE812938E6F93777BAF9289F00A5073690F8B8
            30C81561B0D939F4F48E60767A02F7FA79C62740F15E7F121EA144C4F6686823
            75B0CECCE17E75231A8C0EDF0085B16252DBF1182ECB3478DE0697CB85F2D3D7
            F0F0DD926F8053517854FFAC36DB3A390F1B6F87D3B988AA8A5B35F5464F914F
            801DBA705DDDD5DCB71AB91B76BB03EF279DC82AB9ABA1A5E9FF0252AB4D8D1B
            D5815959A17D10861FC064FE0487E6284637E93132B7D8D85A1094F35740D275
            E36CDE6E4D709C4E89D0CF4F31DCD584F13113645BF661EBC90A749F3907556B
            1DBE8B65F088C4E03851CD91FEF1A25F809CDB43E4E2C170349B58E4474BB159
            0E7C753A61A4D37B5D7905314306C4A6A6001229E076E36547276626AD3587FB
            C68ABC80B4CA1E929FA245BB45808805AAD265F84201655D72A4E9A538949B49
            EF4B5D7083E144809F044F5ADA90316861BC80D8B27692B35F8781A96F700BB4
            89871E663908EB02A02F0F467A6D03907CE2F7E3DB0C309414E398716205A0CE
            6B21C9BBB62128703DFD1878BB7958164E893FB22F8720397127057BE01104B0
            1C07D64F8CE6EE8FC878655E01C8134B8B1955CC4D814084153D0843019C1485
            B34DD0BB5F2046AB02C73270D362E7188F0FB64543C1A039F3E71803A8464B63
            CD8D6B880AB924134B8F93E532F58525C15068349FA75ACB1F8BF40F0BA311BC
            2A9FA36159D6FE007F784AF086C5C4150000000049454E44AE426082}
          Anchors = [akLeft, akBottom]
          ExplicitTop = 6
        end
        object edtFiltroEmail: TUniEdit
          Left = 27
          Top = 48
          Width = 291
          Hint = ''
          Text = ''
          TabOrder = 2
        end
        object UniLabel5: TUniLabel
          Left = 27
          Top = 29
          Width = 32
          Height = 13
          Hint = ''
          Caption = 'E-Mail:'
          TabOrder = 3
        end
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 209
        Width = 968
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        BorderStyle = ubsNone
        Caption = ''
        ExplicitTop = 234
      end
      object UniPanel3: TUniPanel
        Left = 0
        Top = 99
        Width = 968
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        BorderStyle = ubsNone
        Caption = ''
      end
      object imgVis: TUniImage
        Left = 693
        Top = 109
        Width = 20
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000003314944415478DA75936F4C5357
          18C67F97F632695D152A6E8B595002A80463D4C4B281610E9221943F8B7CD8B7
          258B711F062402DA0467B6A01943A2B82D1B2438226E13036A319A6EF86790B0
          45698A884405AC20562A4EAD2DD04B41DABB5B6A2C59B2E7E4E43DE724EF93F3
          4BDE474051D1E14BE680DF5F882C832030EF0FE00FC82C48B90757B08624A352
          8E91EA88F36DA6ECC285D7DC6FAEC835C599A03455D45DC4F2751E2FC3FD4404
          2B6105EF1F5777D05E992D0875478EC819EF1B68F8A18EE4F2262CED9D58AA0A
          B832344D84F80633CE616ED47C8826C2C5944F662EA067DFAFBDEC6A1EA6DD94
          B9F0AF2DC5F55DB67713DEC11B15434FC7DFB41E28E0F2DD49448D8E739F68C9
          CD8846B762359E49E8B1DA51CB2A46F2DB38B3272D0466FCB653764D3DE4A31C
          23D73ABA3955994FB7DD8BA85D8AA548206DFB3A96C726E2F2A8B93D308273A8
          1FA9A487D6124310E1A8BC3D3D95E33F1E43FFF94F58951F349BF2B08E4964AC
          D752BC5EA0E4AB5D68DE8C25F66D3DDE4937FB3F3BC45CD975DA4A534308250D
          5DB6E494781C3E157DDD369A2A8CDC1C9F217BAD964F376968BE548FC7E9C2E5
          722329062D8DBF3398D9C4D9B26D6104CFD423DE4B4B67A0E7168DE546EE3E96
          C84A5A8AF9F409362EEF475CA2E385DBC3D347A324EC6C64CF2F03984D598B10
          EABF435570907BFD833496E530FA6C96B4351AAC23D38CF6B6B0CA6763DC39C1
          2D29891DBB6B397AD282B932378CB0614302371E3CC7611FE378791E77C6A768
          F8F31F9256E92888F98BD97B66ECF6119E4419086C3DC0D5BE5154EA256208A1
          A653963C4EE213D732E178CC89BD46F26BFB3858148F6E998638BDC88A48F04A
          120FDC73CCAB75CC4C4B54FC363C1F42D896CACFF5DFE33194F2E2A98B93FB72
          D959DB8BA93081AB0E105550F58188D72B516D15958115C85E2D50DAD4CF2B84
          4EDBE69424FEB00E323BE3A3A532872D655D7C919F8CCDE1E3A51F251BA13156
          2B73AC560C0D71511C6EBD191AF1C2EA0E5762DC5BD1638E0982114889D373EC
          C23839E9EB5819A35DC818AFB211CA95C073B797CBD7865E676463D07C515E88
          C9FA32CBB72CA54AE98C7CDD4C38608AC9BCF0A4B742E0FF15ADEC35FF09E262
          056DEFFF0B64755162EDBD6DC00000000049454E44AE426082}
        Anchors = [akLeft, akBottom]
      end
      object imgEdit: TUniImage
        Left = 669
        Top = 113
        Width = 18
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000002AC4944415478DA8D936B485361
          18C7FFC7798DA64D96C399976DA0130D512713ED626449F6A55590970A2B97F4
          2585D23E4490562E99246A5A5ED232548A8A88D887C0402C92DC4ACC4CAD44DD
          DC9C2ECFB6A89DB9B6D371912869EC8107DEDBFFF7F23CEFFF25689A06411058
          8A73191C11E18DD721DC001E65A7B1B06037FAB0E874E54BF22BD608B77625E0
          EC76CE707A1A378EC3E181B402EA413DAC26F263D35B32DE2340E9DE603A4D1A
          01362702660B0B03EA2F9833E8D0FE8E243C0214EF0CA405422E84314910C589
          619C9DC7DDFA6E740C593D03C825BE7473DF03D8A70D204933EC763B2E1629D0
          39BAE819E0783CBAEEA99A738D332698490B28EA276E5C6EB8DD31E43AF35734
          A67C452FD20E6C2DDB45FC0388150BC42DD7F23FF1D9BF60B15831364321A7A4
          8DCF6C1996F62BAE57D20571C7A0D3CEC2DFA04562858C580664D54F766FE16D
          CAC909D5C039721F93535A58F9328C87C931AAB73567996F9D2E94CBD1DA7107
          C90B89E0921348692CFA03C8A81A9A2BD8C6DF2C157311FAED3946FA1F626262
          0A1B2233213C7209AC2B511016D6A0FA910EA9D204A87A54A8BB5A2561B41A37
          20AF71983E9F2DC0D3492F9C480A40642060B5B9A09EF702FB660CA407992A74
          5318F33D85A67E076A14E512A622CD720FF62906E8937B44E89D7682E54540B9
          9F0323C582B63C1A6987238099598638874E4D188E360CBAC5AB5E4172A197CE
          DB2DC67BA66994D31B66D746547E4E408A2C12D09B80EF26740F8623AF4EB32C
          5E05E0153CA33353A3111CC4C60F971FDA380700C176E6843FF0A6168F3F8423
          D7DA0247BB9458D307EC1DA5C5444872B5C3E5E54D39FDF024BD137E2151C896
          86A2ABA11DF9FA9A457F534F19D5A7A85DCF4841CC5CC4A4FB86AA1299DA69A3
          7028D607AD2F467395AAF1716679E9475AFEEBC41591BC623CC2A46D3D2BFF06
          D79F5EF032E3D8C90000000049454E44AE426082}
        Anchors = [akLeft, akBottom]
      end
      object imgPermis: TUniImage
        Left = 645
        Top = 133
        Width = 18
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000002DF4944415478DA8D926B489351
          18C7FFE7DDDEE50D41D34C0DFBB0DA2C726A2AE62A2D2D5030B10F0946450CCD
          A6AB0DCD41174354C87B665EC022498822EA43284644546454D6346FB9CD5B29
          A6B6744511E5AB9ECEA6858A410FFCDF03CFE5C773CEFF25581457AF35D40054
          CDB4902136D5A6A88EA46385A094DA3BEC515D5B37EAEF2FF7916D94B20201CF
          8B210802FAFA0760349A3E66A88FF9FE1350515955E32F93A93DBDBCD0D9D189
          29ABD5DEE0EEE60645A00296890918CDE65ADD494DFA8A80A292721A12B21526
          733F93B9BAB2BCB8DE96D765661F95C9E41A994C8AB6F60EE8B3746445C0F9FC
          12AA8C084757772FB27569DE2C35BED0B33627AF786CBB321C3D3D5DC8D26A56
          0668CF96D13DD191683574215FAF5AD2A43D534AF7C644A2BDAD1539D91A622A
          6EA1D31010A0DF4DEC80DE32BF4E32FB2300B30228E1300B093B45363E38CC41
          440588880009378D2B4201520392313A320687B11104E7ED27A4ADD09706A795
          01BCC3BC6D0C028EFCD9917D66594E80BE781C5AF5215C6BA843E854303CAC83
          08AB4923E4659E370D3C9801D3BD736C56CCEC1361686C860D5148BD79086CB3
          6FA30A6C4AC947C5DDF7880857A0F951332A0B8A42D9150CA425D79B06272681
          9F6A87482CC190C9805375F336961D77C5F8501094F14EC08819465E85BA5733
          B878213794950DF6377892B386862526A0EFD90D06E0E1E42841E9EDCF989B03
          5277EC42489C0B303C0C7CFD84FA363FA8AA5BEDC37F5D7878DA932A13A221F9
          6901271263C0F81AF5F7AD480ADA89A03867E0C328F0651235860DD8E2D98DA8
          FC29B2C4C666BD078D8ADF86FEB78FC17122F0628A75EBE3E11CA2042CEC2A2D
          55B8FC468E1399523CB8DE88D8C2C9A580C6ECD5342656014707317B3882FEEE
          E7786A390C1FA92FE2025C517BE916D42A9B434E68BAF302FB4A976D7053E3DE
          B14A4C1536C708F39EE704B4084970112C38B0D911EF069B5841C2DA39FC9A41
          6772953570F99F286772C1FFC57726D362C06FBE6636F0CF518B800000000049
          454E44AE426082}
        Anchors = [akLeft, akBottom]
      end
    end
    object tsUsuarioManut: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Manuten'#231#227'o Usu'#225'rios'
      object UniToolBar2: TUniToolBar
        Left = 0
        Top = 0
        Width = 968
        Height = 29
        Hint = ''
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        ExplicitTop = -2
        object UniToolButton4: TUniToolButton
          Left = 133
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton4'
          TabOrder = 2
        end
        object btCancelaAlter: TUniBitBtn
          Left = 141
          Top = 0
          Width = 133
          Height = 29
          Hint = ''
          Caption = 'CANCELAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 13
          OnClick = btCancelaAlterClick
          ExplicitLeft = 139
          ExplicitTop = -2
        end
        object btConfAlter: TUniBitBtn
          Left = 0
          Top = 0
          Width = 133
          Height = 29
          Hint = ''
          Caption = 'CONFIRMAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 3
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 12
          OnClick = btConfAlterClick
        end
      end
      object sbUsuarioManut: TUniScrollBox
        Left = 0
        Top = 29
        Width = 968
        Height = 439
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ExplicitTop = 28
        ScrollHeight = 377
        ScrollWidth = 530
        object edtNomeUsuario: TUniDBEdit
          Left = 26
          Top = 97
          Width = 504
          Height = 22
          Hint = ''
          DataField = 'nomeUsuario'
          DataSource = dsUsuarioMestre
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object UniLabel9: TUniLabel
          Left = 26
          Top = 78
          Width = 70
          Height = 13
          Hint = ''
          Caption = 'Nome Usu'#225'rio:'
          TabOrder = 5
        end
        object UniLabel10: TUniLabel
          Left = 26
          Top = 26
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo:'
          TabOrder = 6
        end
        object edtCodUsuario: TUniDBEdit
          Left = 26
          Top = 45
          Width = 191
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'codUsuario'
          DataSource = dsUsuarioMestre
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object UniLabel11: TUniLabel
          Left = 26
          Top = 128
          Width = 32
          Height = 13
          Hint = ''
          Caption = 'E-Mail:'
          TabOrder = 7
        end
        object edtEmail: TUniDBEdit
          Left = 26
          Top = 147
          Width = 291
          Height = 22
          Hint = ''
          DataField = 'email'
          DataSource = dsUsuarioMestre
          TabOrder = 2
        end
        object UniLabel1: TUniLabel
          Left = 26
          Top = 176
          Width = 46
          Height = 13
          Hint = ''
          Caption = 'Telefone:'
          TabOrder = 8
        end
        object edtTelef: TUniDBEdit
          Left = 26
          Top = 195
          Width = 291
          Height = 22
          Hint = ''
          DataField = 'telefone'
          DataSource = dsUsuarioMestre
          TabOrder = 3
        end
        object UniLabel2: TUniLabel
          Left = 26
          Top = 224
          Width = 34
          Height = 13
          Hint = ''
          Caption = 'Senha:'
          TabOrder = 9
        end
        object edtSenha: TUniDBEdit
          Left = 26
          Top = 243
          Width = 199
          Height = 22
          Hint = ''
          DataField = 'senhaUsuario'
          DataSource = dsUsuarioMestre
          PasswordChar = '*'
          TabOrder = 4
        end
        object rgTipoUsuario: TUniDBRadioGroup
          Left = 26
          Top = 280
          Width = 126
          Height = 97
          Hint = ''
          DataField = 'tipoUsuario'
          DataSource = dsUsuarioMestre
          Caption = 'Tipo Usu'#225'rio'
          TabOrder = 10
          Items.Strings = (
            'Comum'
            'Super')
          Values.Strings = (
            '1'
            '2')
        end
        object rgSituacao: TUniDBRadioGroup
          Left = 169
          Top = 280
          Width = 116
          Height = 97
          Hint = ''
          DataField = 'situacao'
          DataSource = dsUsuarioMestre
          Caption = 'Situa'#231#227'o'
          TabOrder = 11
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            '1'
            '2')
        end
        object cbAltSenhaProxAcesso: TUniDBCheckBox
          Left = 337
          Top = 243
          Width = 184
          Height = 17
          Hint = ''
          DataField = 'altSenhaProxAcesso'
          DataSource = dsUsuarioMestre
          ValueChecked = '1'
          ValueUnchecked = '0'
          Caption = 'Alterar Senha no Pr'#243'ximo Acesso'
          TabOrder = 12
        end
        object btAltSenha: TUniBitBtn
          Left = 231
          Top = 241
          Width = 86
          Height = 25
          Hint = ''
          Enabled = False
          Caption = 'Alterar Senha'
          TabOrder = 13
          OnClick = btAltSenhaClick
        end
      end
    end
    object tsUsuarioPermis: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Manuten'#231#227'o Permiss'#245'es Usu'#225'rios'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 976
      ExplicitHeight = 496
      object UniToolBar3: TUniToolBar
        Left = 0
        Top = 0
        Width = 968
        Height = 29
        Hint = ''
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        ExplicitTop = 8
        object UniToolButton6: TUniToolButton
          Left = 133
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton4'
          TabOrder = 2
        end
        object btCancelaPermis: TUniBitBtn
          Left = 141
          Top = 0
          Width = 133
          Height = 29
          Hint = ''
          Caption = 'CANCELAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 13
          OnClick = btCancelaPermisClick
          ExplicitLeft = 143
          ExplicitTop = -2
        end
        object btConfPermisUsuario: TUniBitBtn
          Left = 0
          Top = 0
          Width = 133
          Height = 29
          Hint = ''
          Caption = 'CONFIRMAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 3
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 12
          OnClick = btConfPermisUsuarioClick
        end
      end
      object UniGroupBox2: TUniGroupBox
        Left = 0
        Top = 29
        Width = 968
        Height = 105
        Hint = ''
        Caption = 'Usu'#225'rio'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        ExplicitLeft = 232
        ExplicitTop = 184
        ExplicitWidth = 185
        object UniLabel3: TUniLabel
          Left = 35
          Top = 32
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo:'
          TabOrder = 1
        end
        object UniDBEdit1: TUniDBEdit
          Left = 35
          Top = 51
          Width = 191
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'codUsuario'
          DataSource = dsUsuarioMestre
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object UniLabel4: TUniLabel
          Left = 232
          Top = 33
          Width = 70
          Height = 13
          Hint = ''
          Caption = 'Nome Usu'#225'rio:'
          TabOrder = 3
        end
        object UniDBEdit2: TUniDBEdit
          Left = 232
          Top = 51
          Width = 504
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'nomeUsuario'
          DataSource = dsUsuarioMestre
          CharCase = ecUpperCase
          TabOrder = 4
        end
      end
      object pgProgPermis: TUniPageControl
        Left = 0
        Top = 134
        Width = 968
        Height = 334
        Hint = ''
        ActivePage = tsProgPermis
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        ExplicitLeft = 208
        ExplicitTop = 192
        ExplicitWidth = 289
        ExplicitHeight = 193
        object tsProgPermis: TUniTabSheet
          Hint = ''
          Caption = 'Programas'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 968
          ExplicitHeight = 334
          object UniGroupBox3: TUniGroupBox
            Left = 23
            Top = 25
            Width = 362
            Height = 270
            Hint = ''
            Caption = 'Cadastros'
            TabOrder = 0
            object cbEmitente: TUniCheckBox
              Left = 21
              Top = 44
              Width = 97
              Height = 17
              Hint = ''
              Caption = 'EMITENTES'
              TabOrder = 1
            end
            object cbBanco: TUniCheckBox
              Left = 197
              Top = 92
              Width = 97
              Height = 17
              Hint = ''
              Caption = 'BANCOS'
              TabOrder = 2
            end
            object cbItem: TUniCheckBox
              Left = 21
              Top = 67
              Width = 97
              Height = 17
              Hint = ''
              Caption = 'ITENS'
              TabOrder = 3
            end
            object cbItemFam: TUniCheckBox
              Left = 21
              Top = 92
              Width = 97
              Height = 17
              Hint = ''
              Caption = 'ITENS FAM'#205'LIA'
              TabOrder = 4
            end
            object cbItemForn: TUniCheckBox
              Left = 21
              Top = 115
              Width = 148
              Height = 17
              Hint = ''
              Caption = 'ITENS FORNECEDORES'
              TabOrder = 5
            end
            object cbMaqEquip: TUniCheckBox
              Left = 21
              Top = 138
              Width = 164
              Height = 17
              Hint = ''
              Caption = 'M'#193'QUINAS/EQUIPAMENTOS'
              TabOrder = 6
            end
            object cbOperad: TUniCheckBox
              Left = 21
              Top = 161
              Width = 97
              Height = 17
              Hint = ''
              Caption = 'OPERADORES'
              TabOrder = 7
            end
            object cbCondPag: TUniCheckBox
              Left = 21
              Top = 184
              Width = 164
              Height = 17
              Hint = ''
              Caption = 'CONDI'#199#213'ES DE PAGAMENTO'
              TabOrder = 8
            end
            object cbFormaPag: TUniCheckBox
              Left = 21
              Top = 207
              Width = 148
              Height = 17
              Hint = ''
              Caption = 'FORMAS DE PAGAMENTO'
              TabOrder = 9
            end
            object cbTabPreco: TUniCheckBox
              Left = 21
              Top = 230
              Width = 124
              Height = 17
              Hint = ''
              Caption = 'TABELAS DE PRE'#199'O'
              TabOrder = 10
            end
            object cbPortador: TUniCheckBox
              Left = 197
              Top = 67
              Width = 156
              Height = 17
              Hint = ''
              Caption = 'PORTADORES FINANCEIRO'
              TabOrder = 11
            end
            object cbUn: TUniCheckBox
              Left = 197
              Top = 44
              Width = 132
              Height = 17
              Hint = ''
              Caption = 'UNIDADES DE MEDIDA'
              TabOrder = 12
            end
          end
          object UniGroupBox4: TUniGroupBox
            Left = 391
            Top = 25
            Width = 226
            Height = 272
            Hint = ''
            Caption = 'Ordem de Servi'#231'o'
            TabOrder = 1
            object cbManutOS: TUniCheckBox
              Left = 21
              Top = 38
              Width = 196
              Height = 17
              Hint = ''
              Caption = 'MANUTEN'#199#195'O ORDEM DE SERVI'#199'O'
              TabOrder = 1
            end
            object cbConsultaOS: TUniCheckBox
              Left = 21
              Top = 61
              Width = 196
              Height = 17
              Hint = ''
              Caption = 'CONSULTA ORDENS DE SERVI'#199'O'
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 696
    Top = 160
    Images = {
      0F000000FFFFFF1F046106000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF610000001974455874536F6674776172650041
      646F626520496D616765526561647971C9653C0000032269545874584D4C3A63
      6F6D2E61646F62652E786D7000000000003C3F787061636B657420626567696E
      3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B
      633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F6265
      3A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F
      726520352E302D633036312036342E3134303934392C20323031302F31322F30
      372D31303A35373A30312020202020202020223E203C7264663A52444620786D
      6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F
      30322F32322D7264662D73796E7461782D6E7323223E203C7264663A44657363
      72697074696F6E207264663A61626F75743D222220786D6C6E733A786D703D22
      687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D
      6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F78
      61702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F
      6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75
      726365526566232220786D703A43726561746F72546F6F6C3D2241646F626520
      50686F746F73686F70204353352E312057696E646F77732220786D704D4D3A49
      6E7374616E636549443D22786D702E6969643A36423041323146363130373031
      314533384237363944324331414134323836462220786D704D4D3A446F63756D
      656E7449443D22786D702E6469643A3642304132314637313037303131453338
      423736394432433141413432383646223E203C786D704D4D3A44657269766564
      46726F6D2073745265663A696E7374616E636549443D22786D702E6969643A36
      4230413231463431303730313145333842373639443243314141343238364622
      2073745265663A646F63756D656E7449443D22786D702E6469643A3642304132
      314635313037303131453338423736394432433141413432383646222F3E203C
      2F7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F78
      3A786D706D6574613E203C3F787061636B657420656E643D2272223F3E49C867
      96000002D54944415478DA84536948545114FEDE9B374F675CD21ACC566B464D
      3387566B902CDC880A6D83A085F0478510EABF36112B41B12034C59C16B1C922
      355222FBA1A213A595946589E498E6D2988C536E61B3BC77BBF3D4E887D9F7DE
      7970EF3DDF79E79CFB1D2620BB168248AA1C8298281202D7C3607610E9CB482F
      CB30E059B69A13E9AE9D92731236C32108332EB38392446A4E96819C93E1DCA3
      E644CEF5471A008BBC7864369A2532C3CC4E665916A25C8E8AEE0EC8A84F325D
      73AEBC1C02C10EB5925A20FE87CCCCF3C0BAE3307FB5C064EE03E7AA4B9C4EFA
      A6BE18DB63E2694C11C6FA3A6C8B8E95EA36361A111DBF137A7A9E722A152586
      1284FC5023FCBB85F6829259994C0AA009D5A2F9F51B78F9A8B05CADA1C406B8
      797863B1260CD66B3A9C3D160E7DC97D6C5C1F81164713D6AC580D6669761DC6
      459E94F3A530B596617894C1FCE05D387AD1009BCD0E8175476FD62AE8F62D01
      CCFD68679350D03881AB974E4395FF0E9C2B0319C7A3B5F616D646454239EC8E
      A75595F08D3888843DFB81C791D0A55F80386203DB9686E7AF0CB8526C82BB1B
      0BE2748215413B4BEF52E9AB82766B2C761F8AC3029517D49A403CAC7880F236
      7F3CA9E904C68651D8E487A01395B877E7F6942E288FF1CE6981CD2992DEB8CF
      50C807D0D73F08D31727F6A6E44B4EA98763308FF98503C10421194D6044BA29
      D82197F350A4D780EDB26C824DF080E7C40774760FA2D6F81611C13ED097564A
      01F2CAEA11109B0C2D25F3747DE37A91449ED1266B25F06FD05C06E73989651B
      8E4097900285D28A2867110C0559925B68D04A1453A20BDAF030E88B0AA7B545
      AFFF53AE1FB1BE3849860C203FADED64A0A7990CDD05B13E4B221D692073C13B
      A38630EFCF80F0B46144A4C589F6A94990C9A95409641F7B10E8F312BC300296
      087FAB1A72AA208563C2C87D1B45F5C2CEAEC4E951FB0397D6C727518EBC2DB9
      F659243D496D0C18716938809AEA1FD2B750EB9B6B367E0B300087982FD9E6FD
      43790000000049454E44AE426082FFFFFF1F041903000089504E470D0A1A0A00
      00000D49484452000000100000001008060000001FF3FF610000001974455874
      536F6674776172650041646F626520496D616765526561647971C9653C000002
      BB4944415478DA9C535D481461143DF3B3BF625A54ABEC4B56F61244A8106260
      1269969A641445F86018F51296900F12068945A405FA521B540F61EAA6568494
      AB221144AC49A1486916BAFEADC5660BEECEECCE7CDDF94623E825BA7098F9EE
      77E7DC7B0E7704501CB9FEB24BD7B45230060802E29A0E5D6760F83B0482240A
      B05AA4271D35FB4B79F260838F8DFC646C64496785754F9911AA6E22C64CAC9E
      0D1871A8FE39E7976F3536B2DC1C1B9ACF9461FDD9DBD0741D8A0E740E877827
      491278134639E38E064359C65A68CC9C4FACAAAECEBA34A062EBC556C8542B52
      52A5629B4580C326A2E5910FC3635FF16E6C92CE12CFAB9AC1684A9209438220
      A2DDEB455161816101790058240932A1F65431E504B28741236F2451A3EE2B66
      98129A58DE6E2B3C2DDD345E3EBFD1F804162447A7F0A1EF057E8442BCA5EC4C
      823B631F58FA764ECA09AAAA2F64155DEDF31FBED28E89F100676684F0DC04DE
      0C7641CB398DD44D2E9A0808CD2CE053BF07DB5C4EF246323D589570D7D38AB8
      1A339929FBF1F533C4732A519EED42B11BD89104A4A6B990545089573D8F218A
      2B043749427D9E1599816E288A41207279E1EF41B8D3526027B2C03230AFF015
      C1BACD2E84168344209A04E749426D7F14BB2EB74189444C0974118BA9B092C5
      B35160510514AA4F74000984583C4E32C53F2410DB1D8F179A21C1B08B186CCE
      35989F0C609C38C394B35B018793DEA716A04B3644E130098C453224EC9CF342
      89C6CC098820B7E438A6DB1A10FC3203813ED609F3130B78EB6942624A3A6E84
      2B7EAF7666C9359FFFE4B1BDE8ECEC4324A2E05ECD01BE0BE3A3A3E869BF8FA5
      6F41AA14A1CB7608092E3497F5021BDCF03F9C36D7A1A4AE63C0EE4CDC639864
      AC6A2C4E2BCB7F1A09922C73630D0755D189139F2B70349FD837BA31D4BBBCBA
      4FD84248C63FC68373D97E8DECF3BD9F2D17F07F91B9F21CFB25C0002BF3330D
      DA1D12270000000049454E44AE426082FFFFFF1F043E03000089504E470D0A1A
      0A0000000D49484452000000100000001008060000001FF3FF61000000197445
      5874536F6674776172650041646F626520496D616765526561647971C9653C00
      0002E04944415478DA74936B880D6118C77F3367CE71D66565B1B915564B3958
      2D21975C9392DAD5A6942F12F9A2B0E20B29B46573880F52E28B4BA4C82D92DC
      9370D8645D36EC72C27262CF65CF999DDBFB7A670E8BE2999EE69D79E7FD3FFF
      FFFF994743455DE3B573C2F36A9012340DD713784212847AF62FFF5E0C49482D
      23867EFECC964535C1ABC50DD7E5F3AC94CFD3422EDA7E410A29A5258A69ABB5
      ABD2FB23FDA869B81A5430F6C5E372F6F42807D6D631B6FE28420884DAB8D9D2
      891EEE81F9A98527BBE7D153FF4EAE4B628BFE6C3E9E80503828AE6FA8AF9F7C
      B4C965D4CA06BE9BB64F96BC039D96C01461CEAE9F426C7498AA6953195F3D0D
      5768342E9F8A118916015426DA3292F3B71E286D7A20D5D71F0EE9840DE84301
      4FEF830C95E1EAE5447B0DE2EBC74FE8865104D817DF2B77CDED4175F2B2A22E
      03C35C4F31D435668D805C1E2A27CD64786C1C0B97CE60CD862538B6B252CA5F
      12364E3EF2D426B6660F8E69C14F068A00BD7DCFA3254C9A3F9321C30692CB66
      E95439225689709DDF125AD39293576EE3DA76F0D253E08656AC50B3E520EF12
      4D643BD2E43219DA936DAC3E7C0FE1587F4BA8FA7809CB729407BE084949580F
      3E183AA58E47B9B1BC4FB6F3F2752B3752A3498A7255C5FA5BC284D571AC8219
      98A8EB212CC763D9A1B75C6836A91832401D303173DF288D08EEBE48930D0D66
      61FC456065A25575A1F9F26D2A2AC7040CC221D876FA0D3BEB2A28EDDB93E1FD
      6B1930BD968985026D691BD728654E45259B4EB498DD12629F2F625B7600E01B
      18D585EA399C795660FF9D0CD22D209D02279B354E357562B95275A86018BE84
      75876E3EAE5E15E7EAC35741FBA21168FF96E34DCA2295EA42A961C5B1E22418
      0ADC500C5F979490CF9B0412921D7647F443AA9F741CF5F384683CFD98CF5F33
      DC7FD5417959AF60C6F8395BC5B9D2823D33DFC5AF11ABF2C1F923CA166C5DD0
      D577DC0E7532D27D98EE01F5415CED4B6293C6FFA39FCA91C59AFF0C1FF6ED0F
      01060057AE66CDED4E1D5A0000000049454E44AE426082FFFFFF1F04D3050000
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E302D633036312036
      342E3134303934392C20323031302F31322F30372D31303A35373A3031202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435335
      2E312057696E646F77732220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A3942464234364536313037303131453341414134433241464430
      3131313145392220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A394246423436453731303730313145334141413443324146443031313131
      4539223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3942464234364534313037303131
      453341414134433241464430313131314539222073745265663A646F63756D65
      6E7449443D22786D702E6469643A394246423436453531303730313145334141
      4134433241464430313131314539222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E5406BA5C000002474944415478DA9453
      4B681351143D6F6692A8602928415BB0488592859F2CFCE24A8C823BC1858848
      B12BC1552BB42ABA54045D75E942531796BAB0E84609B8115C5883169552635B
      B28888A198A4753E99CFF3BEFBD2490376E18599DC79EF9EF3EEB9E745482991
      BB53F8ED8751771449480002FA25744641EB1271188640C234EE156EE4C62CB5
      A0C0772F1E846C119886C145A2856730BD2295A8DC00C69ECC8C52A6095417AB
      8E8FFCBB250C1DEFC7C3B725BCFFB088EA728309D2DBBB70F4503F92A681900E
      B970A48F312A2C7D86801D447CF2AA17E0EB97325EDD3E833DBDDDBCBBF0A386
      F3F70BC81ED8CDA73B7EB426547DEAD46D06FC5B739A981C3E899EF4568CBF29
      F1A3F2A7B446523B6AE30E9456A7A93757484AA66F1B1EBC9EC76CA5CE45BEFF
      1DC3A70710841216CD866B05D64B506D05BC6813BB8AA5F22F546B1E6B5DF03D
      5A19D0CE509113046D47D62428568336DD40A2BAE2E1D6B92CD2A6E467F4EC7E
      2E9E9A9E2127E8102F8A25680205A40E947501E9BCF9FC3312A924F223394C5C
      3B855DE92E2EF65E5EE539D8DCADE89C81ED87E482E002E5D0C8D427B20CECBD
      477BCFAE1C43BBDBB0730606D94735B02C132E8152490B29E83BA3C894F797F3
      45066CDE9400E1191313D87F5C4CBE2842CD8F6F5BAC30BEC89AADD5AD650AA4
      CC751D2CD38D7B34B41327F625C07D4B6C1C24F3DBFCE2E3F1F2E1C1F60C0871
      7DBA3E97AD6432616B061B85B2B5D6D832E8342A73C05E4D10D47F4EB856CFA5
      D98FA5F80FF5AF10ADB792418D64F84B319225BD94EFC07F06618B7F05180026
      8E15A97EA3158D0000000049454E44AE426082FFFFFF1F04A303000089504E47
      0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
      1974455874536F6674776172650041646F626520496D616765526561647971C9
      653C000003454944415478DAA4934D6C545518869F73EF9DDE61A62DFD9B42FF
      B4925AB4AD0D38136C6C03F803D688210D2CBA2180C1C468827F61E3C6C485D1
      8D6EC4680C0BA32B302692880B4114A2B1652A506C0353C0E994613A33A59DE9
      4CA7F7DE997B8F078C0B366E7C73DEC539DFF79D9FF7BC9F38F274039E2B37F8
      FC22D6D212D48B258F54B2E0FA84D725342D8E82EB7A9DA65FBBDED65EABAF58
      9049975C9F26BB8510370D29042E5E6C30B24E0FD6AE2797AB10DAD0A93777F6
      4CCD8D1D0DE68B92CDC387A7EAB429BD30FF1785A241BE90D49732D998A66986
      E6ABD2300CA1972B3E3C6A70BC7A3AFBB6103DF569A052F1A4E77AF297139F04
      CCC64D4871375E47CDDA461C17DD45D5DA4E056BD5E6E1F020A6BF96AD8F0DF0
      DEABAFF3785F15758D1DE497E1F7F1385FBCFF21EF1EFD802AB940B158E29DD7
      AEA06E8066AF38940A5676F38E6DB47584A8AADB482E3B872BFD78A296B26C60
      6D7D884C2A434BFF760A8565B541110327EB1336DAF6E127B82942A3894B7FB2
      9CCB615B166AD01D1EE2819E5E76EE1964DF2BCF5371949A964D315F249B4A93
      F0358DEEDC3D807132D1CDB9C99FCEDF9ECF2FEA580DB3996FA96F6A26FCEC10
      F9E4028B8BB97BA76EEC7D886B17CE32134B72ED467CF1E74BA9F31DE13D88FD
      070EA01B6674EFC8AEF0B1C932946DDEDEDA408B731ADD0CB0B4942793BC4D28
      7284EF165E824A00F9C70863D1DF265A5BDB22C6E0D03679F9E20467CF9C61D3
      D04142D51AF1F9ABB8424788456E2553CCC673548B19BA0787A8F777F1F5F169
      4C430BDB56491AAEE7120806492767494D8E33E338C4AF4EB37FDF5E9E3C7118
      53F7131B7883533F8E33E09AE8FED364D3E0F31B4A9732DA8A52B4A5B58D1777
      8F60CD5DA7BF6BBDF285C637DF9FA539F2140F0E8FF2EB85290C9F24147C862B
      E7FA79B4B707290525AB8476F96234313D3549477B3BB9151BCFAB505D6D32AF
      943EFEE5579CFCFC3332990582D53E5564914C67D8F5C20E95E7A816282784FA
      9C3E45F3AEE7C3CF1D8C6E893CA29EB4868232BDA00AE545A545859AA09FD5D2
      2AD18918E33F1C8BF00F6CF1F2A143F8D7988CDD70B057EE7C5453D7F4265285
      84E03E48796FA990BFF371A0B6F9AD262F81D095D0F767B14EB19DFFC62DC5F4
      BF1321A5E4FFE06F010600A83A6C02563B15600000000049454E44AE426082FF
      FFFF1F04BA02000089504E470D0A1A0A0000000D494844520000001000000010
      08060000001FF3FF610000001974455874536F6674776172650041646F626520
      496D616765526561647971C9653C0000025C4944415478DAA4534B685351103D
      F7366D9287491A4B694BB460C18D5DB61511FC61119142577527088A824544EC
      220B172E5C845A175A15170A4A7676A514DC942EC48586B4904AC542B4208D09
      F9344DD2E6FB3E9D79F9155370E18579DC77E7CE393373E60AC330F03FCBC21F
      2144E3E0D20C86540D3E5DC72843B3474AA04D6281CC3B7F0F4BF5BB4C2ECC4F
      0DE0E2349EBB0F386F5D397303C7FA07515673D8CA4791C86C20B41E4230BC8A
      72459B9B9FC2E516000A7EE739D837F1EC9A1F2B91B7585EF7A3A472768095F2
      543A06B053746131B48242597B41994C3600C61E8B21874D093EB9EEC7E28F49
      A4B6635075E0CEA96A7F9E7E16B0118814ED48A6BBF0752D064DC7F087BBC692
      E40B15158FC646C6F1EDCF2BA40A312A18D09B6D81C646FF465B05766513BD6E
      F26B98619FACDD3977A4E730C2C98F267399224A7A1380F7452A874BB22B6538
      15B3BB671B2A70A2256D8BEAECC4CD91748B54DED34DA95F2E0B5395BAFAB22A
      2390D9494058E4BF8597FBCC81248054360AD5B1895962E032385DEF892A8DEF
      8B309568A7DE5809806604F5D131F1B41202E1E82F1845376C56AA93CCDAD164
      E13D9FB12F9B017279222922D000487E876F2D124732A1C3D0252CCC666902F0
      9ECF34CA2A1E1788A60DC429C62CBF3648CAF9FB78E3EAC6C4518F44778F0E47
      17E0B2F59A0099620CB91405C7047E460D64E2985B7888AB149BDF3BCAFD171E
      E0B5D289D13EB780C36E34EAE48EE70A55E6EDA4193C45C7BF5BDE02AD81C171
      9C3C348CDB163B8ED7A562B75A40602388D9D5F7F8C4C1FB3EA6DAE231F19039
      FF12304B1621CBEF7D8DBB020C00DC4C074B92D4AFB10000000049454E44AE42
      6082FFFFFF1F04E502000089504E470D0A1A0A0000000D494844520000001000
      00001008060000001FF3FF610000001974455874536F6674776172650041646F
      626520496D616765526561647971C9653C000002874944415478DA8C535B4814
      5118FE66DD8BEBAA6D61BB2296A8A1890F2AEB66E84322919004E94B4A412026
      410F2552D08344122669170AB5A21B06FAD0558288247D5029D02DCD102FB85E
      D614DD6D6667779C9DD99DF1341B64BBA1E2073FE7FAFDE73FE77C1F45080145
      5108A2B670672AA5C680294E6F1644029A16973511A4A0A98799C606087255A1
      1301195D564B9C393B3B05E919A9D0188C660F872E6C81B0043A3D95A9D51AA0
      D2EE428466375494017E0999DB4EE01725CC2D78C0FBB5C8C8CD44F1F17CC892
      BC151FEAD001BF2AE07CEB4D88F34B6018370CB1F190FD02B65D8128F83BE174
      C24DBBC1D22CDCBF684468A5FBA17B269AFAC9E88D5EB261824129B97E60701E
      BCD703DFAA17E3F3AB68FFBE56FF77BDBEB181E8F727C11B1D8DAF75AF49D815
      8AEFCD76269A8DE53E930D9363CF313BE78027A114556FDA16C7177D0F8BDD6D
      D5559567F0A8FD312C740EE298957F151C6A1C5929CF3194D716ED40AE89474C
      A40C832680D4281AE78E68D1EAC8AAAE39918E074F3A60B51CC407D5271C683B
      9BBB2E868A9651629BE1485D2F4FEC2C21B232C9F032E99E23E4CBC534423E17
      12F222998C775D233597AF044BB7840989617D9876898AF238DCE971415214E5
      955488BA9B86BCB23DC04F27E0E530F4F1256E5FBF1A3CD916F68D4E370F071D
      00CB0A1064354A9E726898CA427E5912B0B0A4905DE81CDE8B532DB630F2FA1B
      389659D8EC0C8C916AC4E875E84E2C81B5B202301601EC125E8DC4E3B4B715FF
      93D72BE0ED7D17DE717C73604DA516641D8E152440B722E3685E2C3ABE25E2E4
      E22D7FA4EBEDA5C0664AE4FA9A9F294D9F127F6C3995523A24DB7F601F3B81E1
      19B102EF0F4F2A7ADCD09154A89D436009E98F29E1DBCCCEBF051800BDD32674
      35C29CC50000000049454E44AE426082FFFFFF1F04C102000089504E470D0A1A
      0A0000000D49484452000000100000001008060000001FF3FF61000000197445
      5874536F6674776172650041646F626520496D616765526561647971C9653C00
      0002634944415478DA8C535F48536114FF7DBBDBC4A6B9CA398B88CA20D77A50
      2B057BA828107D8820A87C8A5E2C9F0C05F1A120460F4A1A4158D243F607DA43
      4459D44B64414894C8CACAAC70CB4D4A9BEECFDD76EF76B77B4FDFD5B0053276
      E0E3FBCEF9CEEFFC3F8C88C018834E1DFBD754302346CA4A0BEDC91421144ACD
      9904DA7B69383C851548C71AB2056915437B7695DAABAAB662BBA302268BD52E
      C631841CF49F818242E6349B2D3098D74230D9606016281938F336A0A432989E
      1121296638763BD170A41E6A46CD8587319B911249B45DEB43CAFF0BE1700496
      D5E55015197947904A2A6E04838884228886A2882C846034AB03791B18CD6C71
      8D8CFA21C544C8891826FD09DC1ED75C791968B8FAC35DEFF27C91CB0EE09B6F
      166F3D5F1130D6A0F561F267537FE45ECE1AECEBFEF0FB44B5C556575982F50B
      1226BC2A8A4C0A3614CEE3E8A10274DF6F696EEC4133E91EB94BA38081C7ED68
      5D1E86E6FE8F34E68BD3F99712F9A2449A46144BC8F4CEA7D0C93B2D746A1074
      F3136822DC4983FC3E7D1774F832AE2F0F52382A636A3EC5272F8E2BC3412023
      83D249B8C74D08CCDC40ED4E404C000E6B0FA2FCAED901A81ACE2CA7108C4808
      84D21045197ADB8FDF4A8041E0A19AF57051B7B103D5E5BD8B11B7D5123CB35D
      78443DFF6A10988B62CC1BC63AAB85A7A4E7A54B854585980978F5BD0F4F3FF7
      E1DC41C2C5170CABB84C60594594BCAFCF3E894BBD2A2DF18B783240D38A50B9
      AD09EF8B9FA17233F066BA0B02FFF44CF29911F14057637FB7B184BF2B747EA5
      56355E40A7508C639AC6BBC096C0CF5D68E7583FCB5EE71CB4891F5B16CF2B0D
      BF8EFD23C000BA3614668B9402290000000049454E44AE426082FFFFFF1F04C7
      02000089504E470D0A1A0A0000000D4948445200000010000000100806000000
      1FF3FF610000001974455874536F6674776172650041646F626520496D616765
      526561647971C9653C000002694944415478DA8C534F48145118FFBD793363DB
      685AB9BB6A10D4122686F967C3B2438581501EA443E6A14342A487A80C82E8B6
      A7E80F045179E8D01F70E920B474E8127B310B939236AA3550730DCDC69DFDA3
      3BB33BCEECF446CB3690653FDEC77BDF7BDFF77BDF5F6259160821B0E9F2E1CD
      1EC263D855EE70A733161425332F50EBE0CD606C02EB906DCBE55E2C9B08EC6B
      2A77D7D7EF44758D078254E64E2E21803CF41F409183D48AA2044EDC022A38C1
      1109BA81DA8201F48C81E91F49A8BA881A6F2DDA3A5A601A663E7BF0B9829A4A
      E3C2FDDBC844E6108BC5216DAA80A96B28D8834C5AF743961157E2482809C4A3
      0A78D1EC2F1860D4D8E11B1E8D405D4C424B2D221C49E17128EB2B08A0EDEE77
      7F8B6FECABE63A826F533F3132368E08DF8873016DB6F56174206F0E0E5DFFF8
      EB5483E46CDE5D8ACAA88A2F93268A051D15928CE3C736E0DDF9AB5D7DBBA42E
      5D2C4696174129DFDFF161AA770DA0AA8473D66D73C0FF494377633B0E9C6E47
      5D3A8D508C60E8D23534855FC2DB7DC6AE33601818197ADBF37CD581DE951062
      090D130B19D6794BB813949992862CE3A79F292A0337E0DDDF00C41760CD4E01
      D13934EFAD66E5357AD63C90E32A66946524931AECB2773E4AC1E228CC8D1494
      677FB47600473B41FE061E1C841578F52F0733F309BC9F8C616B99C4FADB6E72
      20CB7148171114094CE5D9031803F790354D709482134410B6AF01A89343175F
      2CA9B74C6B555EC1200C803A40AB4EA024FC064D1E17044A6058065E87652859
      0CDABAE4CF3496B2B3C796D72BD5933D15578A45C749CB7E664B593607CF86A6
      FB986D84E48E731EDACED89923B34C2362DBFE1660000C4DFCF9EF14197D0000
      000049454E44AE426082FFFFFF1F042003000089504E470D0A1A0A0000000D49
      484452000000100000001008060000001FF3FF610000001974455874536F6674
      776172650041646F626520496D616765526561647971C9653C000002C2494441
      5478DAA4525D485361187ECEFE747FCE2D45129BA22508425A047537FC4BCC02
      2FCA66D45D31F3A29BEE4ACA8B14B5AEEB5288A02882A0B2CD1C9ACE604914E4
      C2210E51AB6DD9D939DBCEFECEF94EDF993FA0E455CFE139EFC7F77DEFF3BDCF
      FB7D8C6360FC48F389DACB5F56FE7442966A65428CB20C8884C0AA5381CB88C8
      E40864E523CA1F491A82870E185EAF85B9C71A91C841A7A31ACCBC11F6E242D8
      8BB450A918C80CA89E0C91AAE572E22625098BBF7863301C6F3C55656B7CFA33
      D6AF2174438D1EB83DF60EB6620BAC4506584C26141B6934EBA1D568C1270470
      4901BC40635C40944BE06EC7393CF17E870614715AD7DCC0792C47E358D910B0
      1849222A10105A2BA156241A6B4B0D28D19B61D0323868D2E107978262552309
      9C37C8A2A9CC62C04A4A8BA6F2525C32AAA006413891059108CC3A0689B484E0
      EF2402EB1C1AEC36ACB2498842CC4B9DA2DAD1FFF2E10D67735B99CD8499B50C
      3D55422A93459A52A04CA57379E6723974D597808DA730F6D6EFF934EAEC55B7
      DE73B3DE3B677DABA6C6BACAAA8A9AF2223DD82C418146E922F2906502865A39
      5969419815F0DCEDF7F8EFF7B8DA063D21F5E1962B68E8BA1EF3DC6AF76D588F
      D595DB2B6A4ACC05C8CACA4D90CDABA366EDD642B07C0A13D3F39EB9D11E57EB
      F0644845C5F34D64180667EE4F85DEDC74B818E6D9A3D6F69636ABD544ABD042
      D2C950D3F58D78121F67E73DB3C34E17150C610BAAED8122D2F9603A3433D4ED
      7AEF9E1C0F2CADA340A7A5BE2544222CFC3EFFF8CCD0C55DC93B020CB3A39217
      F93078A1EFEBE7055CABD761692D82C0C212A606BBFB3A46BDBB9215689493B9
      18BF99BF35491B1B4A674504E8B45AADA62F5305A5619228EDCDDFAE80C9135B
      54C624C57BA7BE45A055ABF24F9BD929F31F027BA16CF68D38AFBE7835E9E659
      7EDFE47D05149C1E9A589E1DE9E9E522515EB1F03F384A797CBFC5BF020C0094
      30531DE49C310B0000000049454E44AE426082FFFFFF1F049F03000089504E47
      0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
      1974455874536F6674776172650041646F626520496D616765526561647971C9
      653C000003414944415478DA84535B68146714FEFE99DDECEC2D9BDD6CB266AB
      D1B8664920603628B43ED49034B5D65489A0209A4A44A5EA83D0B7A2F1566D91
      2AA54FA50F85DAA248417DA9D65BB6F1B21154A2629BE246B3265EEA9AC4DDD9
      CBEC6576FEF1CCC68752909EE19BEF672EE79CEFFFCECFDAF7FFDED8B938D87B
      77FC5537742DA8736ED775A0C439DC1502E44209059543372E6EDC91258ACEA9
      B6FDF6342EFF622A713DBAAE7D3ED86D3BEAAB24D4579A21080C3A03E5D351A2
      6CAA5A9A81A6E1C18B943D1A4F87DE9BE7099DFC27D96FE2F441C00AECFEE93C
      3C552EB82B6D70391CA8B2133BAD309BCC486514C85905298538AD6052CE60DF
      C72B713CFC374CA048535F43FBD7606C328DF169050F5E6631A97070EA959314
      8D38586383D7EA84CDCC50E7A8C073390743AA4953E47034810E9FCB86F19C19
      1DFE1AACB70B10C111CF14C1350E67054326AF213A95C5C83319ADF51E3C4964
      51529261528AF9EDFDA7BFDFB9AEF3439FC7816B4F0B545543AE50449EA01072
      79B50C5555D1D3528B57E91C8E9DBB75F1D6376BB7895D872E24C27B3F893C71
      849AE7CE9B1DF0575A912872584CC62EA21C3AF5CA38F0EE5C0FE289127E3D7F
      FFDCCD233DDBBB0E0DC7C4051F7C8AD69EEDC98BBB3E8A4CBBDB9AFDF5B3035E
      A70545DD7082ECE34602911C72635A167079E8E79B370EF76D5AFD1D6292E507
      8881CE5E489284868E0DC9813DDD11A5B6ADD9EB9F13B0DB2418FA74DA0DB3E0
      C2586C0B461EAD4753C3D03B354BD49D8CC147EFCF961358240B34F238B8AC2F
      79B97F4544F32F0A32C9D95857EB26FB18C61EF64164C7B1BC1DD8FCFE8FA8A8
      3E437662713A8B5982A191B119ADC6A2FBE895D8D5AFD6EEB837FC17B6B69831
      3A91443C7E021D8BECF04AADA8937AE1B584B034E44149C36702A39FE4640AC5
      42016A3E0F95983636268A02465280288AE502CDD55BB1AAF14EB9CECAC66134
      556F2ACFC19B0E5819780363CD73A9F0E09F533489024C223038FA2D0E0ECCB4
      6AF060F408A806CA2EFC378C047F1C58753DE36D6B325B5D0BD4FC63C899287C
      6E9A3C318F89E908EE8F02F2144EB1655F5FC2DBE2C2175D0D5D5F0E0CEBCC57
      855CCB31C9838D34D9A0B386420AA72E1DC0E70CFF1F0B09C699794198F5AFE7
      938489D7020C00BFA467B288347FB60000000049454E44AE426082FFFFFF1F04
      6006000089504E470D0A1A0A0000000D49484452000000100000001008060000
      001FF3FF610000001974455874536F6674776172650041646F626520496D6167
      65526561647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E
      786D7000000000003C3F787061636B657420626567696E3D22EFBBBF22206964
      3D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C78
      3A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F
      2220783A786D70746B3D2241646F626520584D5020436F726520352E302D6330
      36312036342E3134303934392C20323031302F31322F30372D31303A35373A30
      312020202020202020223E203C7264663A52444620786D6C6E733A7264663D22
      687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D726466
      2D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E2072
      64663A61626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E73
      2E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D
      3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D
      2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E
      636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220
      786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70
      204353352E312057696E646F77732220786D704D4D3A496E7374616E63654944
      3D22786D702E6969643A46433542363732363130374331314533393736384643
      304541434537383333412220786D704D4D3A446F63756D656E7449443D22786D
      702E6469643A4643354236373237313037433131453339373638464330454143
      453738333341223E203C786D704D4D3A4465726976656446726F6D2073745265
      663A696E7374616E636549443D22786D702E6969643A46433542363732343130
      37433131453339373638464330454143453738333341222073745265663A646F
      63756D656E7449443D22786D702E6469643A4643354236373235313037433131
      453339373638464330454143453738333341222F3E203C2F7264663A44657363
      72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
      203C3F787061636B657420656E643D2272223F3E819E998D000002D449444154
      78DA8C935D48536118C7FF67679BDBDCD4CD94D4E99C9A5FC122D24CF0A2BC58
      22D807444151D48550375918117865295410E54559541049A1742358F9458AD8
      B0B020DD5267CB95283A3FA6FBF4ECEBBCBDC71A7961E19FF3BC0F3C3CCFEFFD
      739E7398F21B5DFB92D3522E87025C091F8EE8440C108E10C44B1970611E6E2E
      049E00203CCDCCCF10211FA57CE46E6F9DF103AD421C0AF343B74F19D0FE6509
      D91A19626344B4993E0C039E82B86010C160042E3F07F3CCAACEA04DD03DEBB6
      1CA7B3CC3A204208D2A5C0C5876F919C9480A4F83868E294D0D02C9588E1F4B8
      B1E2F261D9E385C3E9C6447D159E7609967E4B2C1C8E1060BA7E8CDEE0C484C3
      871FCE0004304FBDC7B022ECD6C6412D5323933A34CFBAA941E62F20E277F54D
      7B509E18A7400EB572A0508C589660DECD2142014A0983454F0063F35EE425CB
      31EF0982E37C7D518080CAAABAD3DB7CC6586C942A15185F0ED18600BC6B411A
      01B885EC0F62AF36163296474B9FB967A4E1F0053A372500581A2B933D2DA619
      D5AE027DA62E5BA5908267D9757A9A5A860A432AF6EF4CC25A4484076F3E7759
      1A0E09C3766C227DD9B5B6EEC6C165D2341A208DC35E625A2564C19042BC478A
      48CB9336C1B63EDA3C97AF5C7F93A20D00FBFB9B27CE7777BEEB1CB3CD0A3B07
      438D38AD73E04B2A71B0FD962E7AF35CBECA33EDE13BF10FE94BEB3A888F1072
      6FD8495A5BFBC938FD2C1C35D564E950D1E06CAE9C4CA6C956A36E449B00EC62
      B108561730605DC46B7E3B0A80A2A9A6C79341B5BE4C94BE03350B81A351379B
      01C0AFB9FBFA2D0E28622430646E83578B98C22B67739D6DAFE0FF6AC57DBD32
      65E31A37535671ED8BE673278DC6C2819728F5DAB068FA04FBC0D04088657D19
      09D24AA982CDC9F8E6FD8EFF48DF31681EE12AF2C9D2A56A322A16FE10640BF5
      E72A49BD2D4D4EB005E5CD68402C2A09A9054E6FA8273E8A155FB5A5CA57992D
      40F6FCC97419F06FA8AB69E87E09300003293C42539C98860000000049454E44
      AE426082FFFFFF1F04C802000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF610000001974455874536F6674776172650041
      646F626520496D616765526561647971C9653C0000026A4944415478DAA4534D
      68135110FEDE761393CD8F4D414AA956C8B5DE5A0BC6820A45440A3DE9CD9322
      681129CD41F0E2C143D1A620554F7A6941C182A014A45014BC88F9B19A52D1D8
      582CD6D4D0FC3676D3EC9FF376934DB5DE1C987DF066BE6FBE9D99C70CC3C0FF
      98C83F8C31FBE2F4387A540D63BA8E014ECD238200B4089827BF363B8A442397
      1767E6A74E70EA16EE05BCFECBE78E5D44F7C14350940A8AF23A7E1657915C79
      8FD8F2126A8A36331BC6D95D04047ED2D9D671E6EEF96924D7A6F0E1DB14549D
      ABA3EAE42E471015D98757C945C835FD3E2919B6090623ACC7E792E2772E4CE3
      E5A761E42BEBA66C53176BC8B5BC506C432C958766A0F7F9889110785051717B
      F0F010167F3C408E240BD419D662392843A543D6804B21030E571EED0140D730
      0E2B6CDA8960FB012CE75E98B26BE454017440A5B34A0C23FDD6B45C12E0F798
      CA8EDB53E0A1AA56C63621AE86ACC4C81B0607D1D7A872B8BF396AD1614E048D
      E90BD61881F2AFAC25B96EA3470C6C52E570A8099E78CB208A765B9A0402DDE4
      CA1938893D126F86AF1F6D82233106F71E021342D3191AAB631268DB887EC9A4
      A1575BE17151F23BF6C7B6451216D8E1044A0586CD2DEA4D1551BB071B1F31F6
      D9977DEA71EFC5BE2EC04B24934906BDBE071207D3EF690A90CD029982812C61
      6C050B8F3157DEC0CC42BA849594804A1E7053352F75DB435D775299528EE16B
      8A219D3150E1B98F3067F66FC72A779DBC8187522B063A020C3EC9DA40F317A9
      155C36AFCCC1F33711A6EBD55D6F812CD83D84D0FE5E5C11DDE86B8C8A875519
      D1EF714C2E3DC36B0EFEE763AA1BD54627B9FFAF975B265F23DFDAF91A7F0B30
      0015D908F7EF003DFE0000000049454E44AE426082FFFFFF1F04D70200008950
      4E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF6100
      00001974455874536F6674776172650041646F626520496D6167655265616479
      71C9653C000002794944415478DA74934F48545114C6BF7BEF9B3FEF355A0A45
      665016410333A0665291D6265AB5CE705A5548EDB45D2405463B0B3786540431
      A2509B68D92A89166619CE808B280BAA91CA19671C661CF5BDD739777A8FB1E8
      C0E5DD7BEEF97EEFDC73CF15A8B1A9E3B15EA98CA4B5633B5CD7250F0F012104
      4A3F7EC2B13712DDAFD2E35E3CC7881A718F106A2276E112CCA626B855AD6690
      1EE54C06E987F7C96F9F23C8E426008B21E544EC621FE4F72F283E9F84080448
      2929CA81BBBE8EC8991E38BBF620FD600C701C0DD180A9AE782FA5988CF55D86
      FAF6191B99AF800A6075F6354182245E43B8ED1860AFC368DA0DBB792FD263F7
      F8EF89AEA9B971BC3C72D0CD3F79E416476EBA8BDD2DAE67D981F3EEE2C9FDFA
      EB19EF731CC7B38E33900EA5C85679F10CCAB4FC82360C3F4628DAAABF9E2973
      8B8E6373749100C995B2283D699A50917A644F457DC1B6D1A7FE9CFD2A524771
      16CC42AE5A590D90C4C8FE820C84A18204B1EAB0D29FA8BD5DBD663FEFCB6018
      EE4AAE5A600D2092BBBC44801024CD83ED47517737B909C06BF6F3BE348210F9
      7C4D06EC5CCE51E10D083A977963C417164FC7FD39FB795FD1F5CA620D40D011
      4A443442748450C81794CF9E80DAD9ACBF7E1169DFA051CA17E8045580B813DF
      77BDA3B17EA82D7A00A6A160AF96AA1D4647825274FF36F54245B7B30A5B286F
      D8989DFF80996C61B07FEEE32DC6340EC75BFA0E37D4DFEE8847619A216A3EEA
      3E6E52AF9579459996CB15CCA4E6F12657B87635B530C6EDE2BD050DE92448E7
      A156042356F51D7946516BC512A6DFBEC7F41F31DFECA6C7C4103ACE95F6ADD6
      906E92BF007C03EFF2A5C181D4A75116FFF31A3D088D16FCDF163CB107F82DC0
      006E981BF85B3064920000000049454E44AE426082FFFFFF1F04B90200008950
      4E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF6100
      00001974455874536F6674776172650041646F626520496D6167655265616479
      71C9653C0000025B4944415478DA8C53CF4F135110FEDEEEDB2D964A95809503
      8D16AFE24129C40B8583070D562F26FE0D1AFF01139A92D8C49389D1AB7F8109
      C526063D48EB45510ED67815123D60C544A58B747F3E671E0559C2C149266F32
      F37DDFCE9B372BEE57E6B09C28C0523E0442846154F5FCB0184411A0B0630290
      8601DB32174CD3B8A660C21716C6DD3AA482818B9D5778D3330DA104BCC02DCE
      DFBD8C0EF154574090400F9DD72B8B45DB9450426A4E40A78C4880830952DBFC
      FD132BA94BD826F0CA97B8C0852CE05353E7366AE84B1FD71CE64A06848ABB35
      E8025245D41EF386D371010EB9C698401922EAE6651886D520088A14E368AA17
      C2B460519C4B23662E13A8C618D7F3B5B6947241CCCECEAA72B9AC41B76EDF81
      254D902082308A0948D36002FC20C4E3470F75AE542A71CF11DACE165657D730
      30308844C2A6A18BBD07C0BF87A09C82EB7A687EFC845CEE3498AB67605B1672
      23A7D0DFDF4F0209BA9BC061A6140BB81A6B4B6BA7339E44BBEDE0EDBBF76836
      3FFC9740A3710613F9313D45C96067CB816D5B383B3A8A56AB05414B73A800B5
      9CC9643496396257607BDBA5E159C88FE5F16D7D5DDF9FC1B1199028F7757268
      089EE7698E1630A8E0FB3E7A934750AB3DC38F8DEF284C4EE99750DD51F250F9
      05EA8D250C0C9EC0CCCC55CD61AEEC743A8DEAFCD349564F260CAC666FE0C1CD
      697C75E28B349C029EAC0D221BBDC68BC5E75A9AB95C1F213FBFEB57EEBDA44D
      536A8BDCE93AC79CE3DA7E2C7345A552D15FA1F5C1B25D80B7D95A32EC64213C
      F0379AD46EE4FDA9DB7D99A971AFCE2BBDB71F078D3B3A86C3ED17F9E7FD89BF
      020C0085BC110A618F79F20000000049454E44AE426082}
  end
  object fqAuxiliar: TFDQuery
    Connection = UniMainModule.conexaoDB
    Left = 804
    Top = 153
  end
  object dsUsuarioMestre: TDataSource
    DataSet = fdUsuarioMestre
    Left = 644
    Top = 219
  end
  object fdUsuarioMestre: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codUsuario'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcUsuarioMestre')
    Left = 748
    Top = 219
    object fdUsuarioMestrecodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdUsuarioMestrecodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdUsuarioMestrecodUsuario: TStringField
      FieldName = 'codUsuario'
      Origin = 'codUsuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdUsuarioMestrenomeUsuario: TStringField
      FieldName = 'nomeUsuario'
      Origin = 'nomeUsuario'
      Required = True
      Size = 100
    end
    object fdUsuarioMestresenhaUsuario: TStringField
      FieldName = 'senhaUsuario'
      Origin = 'senhaUsuario'
      Required = True
      Size = 100
    end
    object fdUsuarioMestretipoUsuario: TIntegerField
      FieldName = 'tipoUsuario'
      Origin = 'tipoUsuario'
      Required = True
    end
    object fdUsuarioMestrealtSenhaProxAcesso: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'altSenhaProxAcesso'
      Origin = 'altSenhaProxAcesso'
    end
    object fdUsuarioMestredataUltAltAcesso: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataUltAltAcesso'
      Origin = 'dataUltAltAcesso'
    end
    object fdUsuarioMestresituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object fdUsuarioMestreemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object fdUsuarioMestretelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 45
    end
    object fdUsuarioMestreFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdUsuarioMestreFC_IMG_VIS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_VIS'
      Size = 50
    end
    object fdUsuarioMestreFC_IMG_DEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_DEL'
      Size = 50
    end
    object fdUsuarioMestreFC_IMG_PERM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_PERM'
      Size = 100
    end
  end
end
