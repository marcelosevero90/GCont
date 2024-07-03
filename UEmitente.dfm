object FEmitente: TFEmitente
  Left = 0
  Top = 0
  Width = 925
  Height = 502
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pgMenu: TUniPageControl
    Left = 0
    Top = 0
    Width = 925
    Height = 502
    Hint = ''
    ActivePage = tsEndereco
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitHeight = 457
    object tsLista: TUniTabSheet
      Hint = ''
      Caption = 'Listagem'
      DesignSize = (
        917
        474)
      object dbLista: TUniDBGrid
        Left = 0
        Top = 241
        Width = 917
        Height = 233
        Hint = ''
        DataSource = dsEmitente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
        WebOptions.PageSize = 100
        LoadMask.Message = 'Carregando Dados...'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        OnCellClick = dbListaCellClick
        OnColumnSort = dbListaColumnSort
        OnFieldImage = dbListaFieldImage
        Columns = <
          item
            FieldName = 'FC_IMG_VIS'
            Title.Caption = 'Vs'
            Width = 36
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_EDIT'
            Title.Caption = 'Ed'
            Width = 50
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_DEL'
            Title.Caption = 'Dl'
            Width = 50
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_MAPA'
            Title.Caption = 'End'
            Width = 50
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'FC_IMG_BANCO'
            Title.Caption = 'Bco'
            Width = 51
            ImageOptions.Visible = True
            ImageOptions.Width = 16
            ImageOptions.Height = 16
          end
          item
            FieldName = 'codEmitente'
            Title.Caption = 'C'#243'digo'
            Width = 132
            Sortable = True
          end
          item
            FieldName = 'nomeEmitente'
            Title.Caption = 'Nome Emitente'
            Width = 329
            Sortable = True
          end
          item
            FieldName = 'cgc'
            Title.Caption = 'CGC'
            Width = 94
            Sortable = True
          end
          item
            FieldName = 'FC_SIT'
            Title.Caption = 'Situa'#231#227'o'
            Width = 184
            Sortable = True
          end
          item
            FieldName = 'email'
            Title.Caption = 'EMail'
            Width = 211
            Sortable = True
          end
          item
            FieldName = 'telefone'
            Title.Caption = 'Telefone'
            Width = 124
            Sortable = True
          end
          item
            FieldName = 'celular'
            Title.Caption = 'Celular'
            Width = 124
            Sortable = True
          end
          item
            FieldName = 'dataImplantacao'
            Title.Caption = 'Data Implanta'#231#227'o'
            Width = 187
            Sortable = True
          end>
      end
      object UniToolBar1: TUniToolBar
        Left = 0
        Top = 0
        Width = 917
        Height = 33
        Hint = ''
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
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
          DataSource = dsEmitente
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 5
        end
        object btNovoReg: TUniBitBtn
          Left = 435
          Top = 0
          Width = 133
          Height = 33
          Hint = ''
          Caption = 'NOVO REGISTRO'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 8
          Images = UniNativeImageList1
          ImageIndex = 5
          OnClick = btNovoRegClick
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
        end
      end
      object UniGroupBox1: TUniGroupBox
        Left = 0
        Top = 41
        Width = 917
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
        end
      end
      object UniPanel1: TUniPanel
        Left = 0
        Top = 33
        Width = 917
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
        Width = 917
        Height = 126
        Hint = ''
        Visible = False
        Caption = 'Par'#226'metros'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        DesignSize = (
          917
          126)
        object imgDel: TUniImage
          Left = 743
          Top = 46
          Width = 20
          Height = 25
          Hint = ''
          Visible = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000002464944415478DA9593CB6B1341
            1CC7BF333BB3795AA2B625D88A8A57FF0215BCD4E2E3D036161F5104052F5E94
            829E8B672F9E7C1CDB1823EDA65B8BE241AA10E3A2F6248A50EBA3DA4A375113
            1F358426BBFE364DB24D530AFE6076989D99CFEFFB7B0C1B9F98C895CAE5906D
            59B0B1D29C1503670C8CB1ACA228ED9C73AC36A68D8DD991DE5EAC67994C06A9
            74FA8E9432BA1AC2469349FB485F1F3E7E9AAD782487B0ED65053BB66F432C1E
            C7A96814A669E2A96124A410275642D80801FA09F0656ECE915A07D8F4D9DAD9
            89DB8904BABBBAD0D6DA5A5192360C4D08D1EF9CAD0234024430FF75019CB33A
            D9B26C746C09E3E5D414A66766E0E4C85192D475485565ACAA828D6804884460
            12BD46AD04400AFC013F3604820D318F12C0E3F333E6F1028AE202B2DFBE3700
            6A905A659CBDB6CD9BA0DD7F0035B491B1D30700557501B97C7EED123879214F
            5CF5A04595D052CF20CF1E663C48CA14E9027EFEFABDD66D3029A0F8BC783378
            09EF6F5E83F0F9A1F869A8EA752EC4F93AE0CFE262F3754A14F7F9F07AF0328A
            8FC6B1F7E07EC0EBA30C97F13C656061DEBC5107140A856600491714E7DD768E
            E89963703264974B604200D283E4BD4937846271A9DABE8D002914C4C3122787
            8681EEE3EEE6A406EDE205B7912CAA73B5055D739247533C2C70F4D0EECABE73
            8E3BFFA50AFDC53B7A0BBA6E477A7AD67D0B6FAF5E8119BF853DBB3A20485189
            FC181F7298CEFFD5D8502CF6241008ECB396FBB7A9845C48F0600BA00FC37AFC
            10A0353D51FC582A6BE75ECD0E3879D9492384FFB72C8DCFFF00C524EA0E4B59
            B7A30000000049454E44AE426082}
          Anchors = [akLeft, akBottom]
        end
        object UniLabel2: TUniLabel
          Left = 95
          Top = 32
          Width = 25
          Height = 13
          Hint = ''
          Caption = 'CGC:'
          TabOrder = 2
        end
        object edtCGCFiltro: TUniEdit
          Left = 126
          Top = 28
          Width = 148
          Hint = ''
          CharCase = ecUpperCase
          MaxLength = 14
          Text = ''
          TabOrder = 3
        end
        object cbAtivosFiltro: TUniCheckBox
          Left = 126
          Top = 90
          Width = 97
          Height = 17
          Hint = ''
          Caption = 'Somente Ativos'
          TabOrder = 4
        end
        object edtEmailFiltro: TUniEdit
          Left = 126
          Top = 56
          Width = 251
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          TabOrder = 5
        end
        object UniLabel1: TUniLabel
          Left = 92
          Top = 59
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'EMail:'
          TabOrder = 6
        end
        object imgBanco: TUniImage
          Left = 603
          Top = 77
          Width = 18
          Height = 25
          Hint = ''
          Visible = False
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000002E04944415478DA9D93596C4C61
            14C77F779B1615A408658887DAA20FA38DA612B196488598502452444B2C1355
            6A8F845852B594DA67284568514B34A2B525C45A69A2B13F0843091A442B63EE
            DC7B7DF78E54D27872BE7BDECEF73BE7FF3FDF952CCB4292245AC6D614D28D08
            9529DDD16ADEA12B2A194B6BA86E5927B504EC1E8CDB0C73418DC5939495CBAE
            FB268B52651E97161109512BBB98B0F00EC17F020283396984989A909E8E67C9
            4ECACAABB977FB1161C362CFEE15D46ECBA5FE6A354A2CA7B2EF30AD1950364A
            DA6248E4C7F5E84DAFB99B69D3A30F1A06BE791B387C641DE1B04E286C60CA1A
            4DC197BC3EB092C6B72F512C0A1DC0F95192F56DF42A4666CFA6F1EB2710E235
            55A6BCAC8A870F9E302875009333D3D123260833E23A74E65AE010EDAB36354B
            482E2E29AF999891C497CFEF1C399AAAD2AA550CAE188D05730A28D8E6E39798
            C4AEEFD8A93BE72AEBF0CDCA4C69F6A0B068AF35236B0CC1E073245916008DD5
            CBF63900CFC044267887A2EB3AA669E276F7E568E915F273E74BCD80F51B0BAC
            BCC53378F6EA0192388AAA1013E3624DFE7E3614CEE55748C7300C2C71FA250E
            62FB8EA3AC5DBD3C0A282929F910D1235D1C8DC80E5092256431899D7657D330
            9DF1ED04D3F148D5D48F0EC0EF0F5839393369F8FE01C5158BACB904477626B1
            3FD1D4E98C0DD2C318E110F1EDBA8A7B47A2261E3CE8B7A667797915ACA3764B
            3E6FAED420297F5E8AEC3474C232A0E798143CCB0A49742771BCB4E22F60F2D4
            B17CFAF1854BC33C0CC9C9C09254910AEF2F57D06DAC57141A2223DCF25732EE
            662D9DDB76E4F4A9CB7F0081C39677D2309AC4FEAB86F7212DD7C7D3B26232B3
            E1D076989D07E501E83FC5C7DDA26246DF78411BF11E2ACEDC8C02FC27CE5ADE
            8969E8C2A8EB43DCC4F76DCD8FFA9F8EFE6003B8E3A33EB44D684DC3F39F8CB8
            154453642ACEDD8D028EA54956B811522FD60B9DBAD882106EA76DA38038C63B
            4EDA9B30853F1AF7C727E08AFBFB3325F39FF11B9BB057A3FF47CF2000000000
            49454E44AE426082}
          Anchors = [akLeft, akBottom]
        end
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 233
        Width = 917
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        BorderStyle = ubsNone
        Caption = ''
      end
      object UniPanel3: TUniPanel
        Left = 0
        Top = 99
        Width = 917
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
        Top = 116
        Width = 20
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000001F34944415478DA9D933B4FDB50
          14C7FFD77642D307344B874A30756C08059597F3B26069AA74CAC242F315BA55
          2225BC06401D5A31203150B50B3B88C09684A489FA459A11E22420EADA9773AF
          138287A22AE7CAD2F1F5B93FFFCFE3B2C0D2F1E1E0809A723887580CF71BA787
          D1521883796D1FB1676BA77CF3DD142CDB9601FF0310E653557C3CFC05F63497
          E7078B71AC14EB4425003D9CF37F1C6712E1D0E795C4732CFC28813DCA1EF3D6
          7A12FDD8E34F79B000012E09B09C5B45BB7D094D533139F91AA1D04B54AB3519
          A8CFCEA05AAB913A37414EE9BECF64F0302B004B04D848E277BD0E55F349F996
          65C1A6204551E4015160513426DE45B11D1B23C3C30864EF28D8DAFE8C56BB0D
          958A333D3385B1D130CAE5B2FC6B241241A5529140DE01A4D36917F080145C91
          82A6D924059AABE0AF50E0F424D39EF0BB8A0420180C7A015FBEEEC06CB64881
          025D8F60FC5518A562511E88270CF20BB70010E06D2AE505082A5354D9E76E0D
          3C0A14313C1D0077E0F70F7801BBBB7BB8304DEA82865854C7C4C4388A85828C
          4F1886F4BB0A18018CB9792FA01FA306F4BAF06DFF3B1AE639145583118F2334
          1A42A57C26674F8FC6F093FC5B0594E8B41E75E7607039CF1BAB6FFA5230943B
          A1143E1C94FC4F866296D39B7FF72A70F4AED65DDFBD2F3E2AEA9F66E34CECBE
          10B0BE24008D1B5394EA00681713440000000049454E44AE426082}
        Anchors = [akLeft, akBottom]
      end
      object imgEdit: TUniImage
        Left = 669
        Top = 119
        Width = 18
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000002984944415478DA8D935D485361
          18C7FFCFF958B629B95A29354B9184120C6214DD6817D24537EA4CA1D1451204
          7A61451008F64174517461097D6044266A82CEA3297615143A96E888102AC43E
          C4AF36B5399DCD653BA7F73DE299A2442FBC07DE17FEBFE7FF3ECFFF50675757
          F04F2C96ACA92A34AC5DFC4410884044D3A228EE1204815F212669D8EFB32012
          9E05B91545731616E25F2B1008A0D7E37921CBB28B184495D700DADADBB5E2A2
          227CFB3EAA576405A1692B0E32D2F7A1B1B919675C2EF8FD7EF479BD2DB22C9D
          D64C1407B432C02906181B1FE7560D80C63E69763B9A5A5A70223F1F3B6D36DD
          495FBFB795B68AA559BE442C2DE8003703383131F9038240866D55D5B067772A
          060607313C3202DE23EEA4B54B41F6D07652591FA2F31CE06600A7137E46E70E
          8C163207668B194996C475FD68EB567060C80A8D03423FC9004CCFCCAE03AC42
          5666C1A6218AD861DD862B57AB51E1388FA9C90012A6C6E20E8273739B8F80B8
          58866432E3DAF51BB8585981FAA66770040FC316FC1A0784E61736110B20D104
          2141C687CB69C82EBF8F7BCA048E1D3D849ED73DA8BD75C76100C28B8B1BC482
          640299440C5CCA446E491A30318ACFA673A87BB78C9ADB371DEF2B9EFA0C4024
          12592F66954926789938AF249D89FD40680AF5032928ABFBE4B85055E53B3B9D
          117F4234BA6CC497D89B0509F054EE455E29134FCE00C1001EF6A7C0EE7A0219
          4B3CD088911A0F92CAE6AC278857677998693E025B6E3130F70BE8AD41AD3715
          950DC350BA5F4116F4C1E805C9DDD1A1390B0A36F4AFAEBA08F6833938999384
          47771FA3FCF9887EAF74BE842489B43A726A686C7C63B158F2D495FC82FF2CF2
          16333CED0F9044519464011F73AA81DF6C4AB16584C30B6FAD56EB71A35D6C67
          B29D8CFF5F3C305F560F7F01868B23E98AF177D10000000049454E44AE426082}
        Anchors = [akLeft, akBottom]
      end
      object imgMapa: TUniImage
        Left = 645
        Top = 139
        Width = 18
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000029B4944415478DA9DD34B485451
          18C0F1FF99B9A3A3338E8F852F521B2D339B111ACDC7CC6494B5E8410B692351
          9B88B0A74E42D9A2455120F98AB068554686440415412B351D1FA98B6C5191D5
          38488452A35986D638B7339AF9D8D907877B0FDCEF77BE7BF83EA1AA2ADB1ABA
          3AA7FDAA7D4605826B36E636E2DFFB7C08B41A4188A2196F39668F1641C071B5
          537D74D4C194FC2E10CC08C835033AF950044B2248295AD87BC38DFB9453CC02
          F9759DEAE3130E9E36099C1D3A7A8B93D99F5EC6E18952BE7C784D6C6ABA3C57
          E5ABE72D11AB33A8B1EAD975BD9DEEF2C23920AFAE4B7D5666A7F989A0F4A085
          AA079F399376998F810C5C030924A6A6A2C8B27C1230A4ACA3D61A42D1B5767A
          5C8B80D6723BE79A05F9FD31789D7E3222F271287B1808C4736BDC22D355B442
          65DA3FC3DDE22C0AEB1703B55DAADB65A7BE431011A967FA9581049B8EAD5187
          5087CC18D658B83862C333F88EC894746E66EB28A85D04E44AA05702D5ED02A3
          04322FC5611F33F2B06992B4C112B23377CA1BD573BC55E1478295DB398A3CB4
          9D17CB818A4681C9148A4131B2FB4214DD95BF5113C228D45410A68B66462267
          0793B8277F21B7B6835ED7E665153C17444684E21B0DC16C0D4719DF886FCC43
          AEC54A96F63CC31E2F13AB6C6C8849649304FAE6814D12E893C01509449BC0F7
          268FF8A94A796D01C6FC2DD84A5A65150D78DE4F62CE5A2F7BC94C4E4D07FDA7
          9701AE3B8298897DE8BE1511B2B6117DEC3013FD47504C9F70E6198813DB5115
          0573E68EE540A7041C54DFCFC034798091B02AD26C3F090F3531EA55D00EB9B0
          5B9308D71849B15A4093B61428909DD85DEE6025915FE7A6A7FC6F2B6FA96BF3
          FE12BA647F6051CFAB6261884470BF305C8A1C26BD96EF6D279DA659400821EB
          22744525C87193B92FC59CFCFFF107B48D29F0243BD0520000000049454E44AE
          426082}
        Anchors = [akLeft, akBottom]
      end
    end
    object tsManut: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Manuten'#231#227'o'
      object UniToolBar2: TUniToolBar
        Left = 0
        Top = 0
        Width = 917
        Height = 29
        Hint = ''
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
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
      object sbManut: TUniScrollBox
        Left = 0
        Top = 29
        Width = 917
        Height = 445
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ScrollHeight = 353
        ScrollWidth = 530
        object edtNome: TUniDBEdit
          Left = 26
          Top = 97
          Width = 504
          Height = 22
          Hint = ''
          DataField = 'nomeEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object UniLabel9: TUniLabel
          Left = 26
          Top = 78
          Width = 31
          Height = 13
          Hint = ''
          Caption = 'Nome:'
          TabOrder = 8
        end
        object UniLabel10: TUniLabel
          Left = 26
          Top = 26
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'C'#243'digo:'
          TabOrder = 9
        end
        object edtCod: TUniDBEdit
          Left = 26
          Top = 49
          Width = 191
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'codEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object edtCgc: TUniDBEdit
          Left = 26
          Top = 145
          Width = 151
          Height = 22
          Hint = ''
          DataField = 'cgc'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          MaxLength = 14
          TabOrder = 2
        end
        object UniLabel3: TUniLabel
          Left = 26
          Top = 126
          Width = 25
          Height = 13
          Hint = ''
          Caption = 'CGC:'
          TabOrder = 10
        end
        object UniLabel4: TUniLabel
          Left = 26
          Top = 171
          Width = 28
          Height = 13
          Hint = ''
          Caption = 'EMail:'
          TabOrder = 11
        end
        object edtEmail: TUniDBEdit
          Left = 26
          Top = 190
          Width = 287
          Height = 22
          Hint = ''
          DataField = 'email'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object UniLabel5: TUniLabel
          Left = 26
          Top = 217
          Width = 46
          Height = 13
          Hint = ''
          Caption = 'Telefone:'
          TabOrder = 12
        end
        object edtTel: TUniDBEdit
          Left = 26
          Top = 235
          Width = 151
          Height = 22
          Hint = ''
          DataField = 'telefone'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object UniLabel6: TUniLabel
          Left = 26
          Top = 264
          Width = 37
          Height = 13
          Hint = ''
          Caption = 'Celular:'
          TabOrder = 13
        end
        object edtCel: TUniDBEdit
          Left = 26
          Top = 281
          Width = 151
          Height = 22
          Hint = ''
          DataField = 'celular'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object rgSit: TUniDBRadioGroup
          Left = 216
          Top = 235
          Width = 185
          Height = 118
          Hint = ''
          DataField = 'situacao'
          DataSource = dsEmitente
          Caption = 'Situa'#231#227'o'
          TabOrder = 7
          Items.Strings = (
            'Ativo'
            'Inativo')
          Values.Strings = (
            '1'
            '2')
        end
        object edtDtImpl: TUniDBDateTimePicker
          Left = 26
          Top = 328
          Width = 151
          Hint = ''
          DataField = 'dataImplantacao'
          DataSource = dsEmitente
          DateTime = 45466.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 6
        end
        object UniLabel7: TUniLabel
          Left = 26
          Top = 309
          Width = 89
          Height = 13
          Hint = ''
          Caption = 'Data Implanta'#231#227'o:'
          TabOrder = 14
        end
      end
    end
    object tsEndereco: TUniTabSheet
      Hint = ''
      Caption = 'Endere'#231'os'
      object UniGroupBox2: TUniGroupBox
        Left = 0
        Top = 0
        Width = 917
        Height = 88
        Hint = ''
        Caption = 'Emitente'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object UniDBEdit1: TUniDBEdit
          Left = 27
          Top = 28
          Width = 465
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'nomeEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object UniDBEdit2: TUniDBEdit
          Left = 498
          Top = 28
          Width = 90
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'codEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 2
        end
      end
      object pgEnderecos: TUniPageControl
        Left = 0
        Top = 88
        Width = 917
        Height = 386
        Hint = ''
        ActivePage = tsEnderLista
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ExplicitTop = 90
        object tsEnderLista: TUniTabSheet
          Hint = ''
          Caption = 'Listagem'
          object UniPanel4: TUniPanel
            Left = 0
            Top = 0
            Width = 909
            Height = 48
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            BorderStyle = ubsFrameRaised
            Caption = ''
            object btNovoItem: TUniBitBtn
              Left = 16
              Top = 10
              Width = 113
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5DADADACCCCCCCCCCCCCCCCCCCCCCCCDADADAF5F5F5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDA3C0B3369D6E008C4B00
                8B4A008B4A008C4B369D6EA3C0B3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E1E1E144A27700905001A16901AB7601AC7901AC7901AB7601A16900905055A8
                82E1E1E1FFFFFFFFFFFFFFFFFFF5F5F555A88200915202AC7700C38C00D79B00
                DA9C00DA9C00D79C01C38C01AB7600925355A882F5F5F5FFFFFFFFFFFFAECABE
                0090510FB48300D29800D59800D19200CF9000D09100D39600D69B00D19801AB
                76009050AECBBEFFFFFFFFFFFF369D6C16AB7810C99600D39700CD8CFFFFFFFF
                FFFFFFFFFF00CC8C00D19500D59B01C18C01A169369E6EFFFFFFFFFFFF008A48
                39C49D00D19800CB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CA8C00CF9600D2
                9B01AB76008C4BFFFFFFFFFFFF00894652D2B000CC92FFFFFFFFFFFFFFFFFF00
                C484FFFFFFFFFFFFFFFFFF00C88D00D09A00AD79008B4AFFFFFFFFFFFF008845
                68DDBE00C991FFFFFFFFFFFF00C68C00C89100C58BFFFFFFFFFFFFFFFFFF00CC
                9600AD78008B4AFFFFFFFFFFFF00884676E0C600CB9800C59000C69100C89500
                C99700C89400C38CFFFFFFFFFFFF00C79200AB75008C4BFFFFFFFFFFFF41A675
                59C9A449DEBC00C79400C89700C99800C99900C99800C79400C38EFFFFFF00BD
                8A00A06740A878FFFFFFFFFFFFCCE8DB0A9458ADF8E918D0A700C49500C69700
                C69800C79800C79800C69700C59612B585008F50CCE8DBFFFFFFFFFFFFFFFFFF
                55B185199C63BCFFF75EE4C900C59A00C39600C49700C59A22CAA22FC1960293
                556ABC96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABB940E965974D5B6A0F4E194
                EFDC7CE6CC5ED6B52EB58703915255B288FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCE8DB44A87700874400874300874400894644AA7ACCE8DBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'NOVO ITEM'
              TabOrder = 1
              OnClick = btNovoItemClick
            end
            object btCancelItem: TUniBitBtn
              Left = 135
              Top = 10
              Width = 114
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFEDEDEDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEDEDEDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED9499C82C3CC02B3BBE2B3ABE2B
                3ABE2B3ABE2B3BBE2C3CC09499C8EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
                969BC92F3EC35F71F9697DFF697CFF697CFF697CFF697DFF5F71F92F3EC3969B
                C9EDEDEDFFFFFFFFFFFFEDEDED969BC92F3EC2586BF65F74FF5D72FE5E72FD5E
                73FD5E72FD5D72FE5F74FF586BF62F3EC2969BC9EDEDEDFFFFFF9499C8303FC2
                5568F3586CFC4E64F94D63F85468F9576BF95468F94D63F84E64F9586CFC5568
                F3303FC29499C8FFFFFF2D3DC05367F2556BFA4960F7FFFFFFFFFFFF3E56F647
                5EF63E56F6FFFFFFFFFFFF4960F7556BFA5166F22D3DC0FFFFFF2B3BBF6276FC
                4D64F64259F4FFFFFFFFFFFFFFFFFF2C46F3FFFFFFFFFFFFFFFFFF4259F44E64
                F65F75FC2C3BBFFFFFFF2A3ABF7386FA495FF3435AF36E80F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF6E80F6435AF3495FF36E81FA2B3ABFFFFFFF2939BF8696FB
                425AF14259F1354EF05B70F2FFFFFFFFFFFFFFFFFF5B70F2354EF04259F1435B
                F17D90F92A39BFFFFFFF2737BF9AA8FB3A55EF3953EE2844EDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF2844ED3953EE3B55EF8E9DFA2838BFFFFFFF2637BF9FABF1
                314CED2B47EBFFFFFFFFFFFFFFFFFF5369EFFFFFFFFFFFFFFFFFFF2C47EB314C
                ED9FABF12737BFFFFFFF2838C19FABF18091F4213EE8FFFFFFFFFFFF5D72EE23
                40E85D72EEFFFFFFFFFFFF213EE88091F49FABF12838C1FFFFFFB4BAE92E3EC3
                97A5EF778AF25B71EE6074EE2643E62C48E72643E66074EE5B71EE778AF297A5
                EF2E3EC3B4BAE9FFFFFFFFFFFFB6BCEA2E3EC295A2EE7688F01E3BE42340E525
                41E52340E51E3BE47688F095A2EE2E3EC2B6BCEAFFFFFFFFFFFFFFFFFFFFFFFF
                B6BCEA2F3DC394A0EFADB9F8ADB8F7ADB9F7ADB8F7ADB9F894A0EF2F3DC3B6BC
                EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9E9303FC44555CE4454CD43
                54CD4454CD4555CE303FC4B4B9E9FFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'CANCELAR'
              TabOrder = 2
              OnClick = btCancelItemClick
            end
            object edtFiltroItemEnder: TUniEdit
              Left = 366
              Top = 12
              Width = 283
              Hint = ''
              CharCase = ecUpperCase
              Text = ''
              TabOrder = 3
              EmptyText = 'Pesquisar'
              ClearButton = True
              OnChange = edtFiltroItemEnderChange
              OnKeyPress = edtFiltroItemEnderKeyPress
            end
            object UniLabel8: TUniLabel
              Left = 296
              Top = 16
              Width = 64
              Height = 13
              Hint = ''
              Caption = 'Filtro R'#225'pido:'
              TabOrder = 4
            end
          end
          object dbItens: TUniDBGrid
            Left = 0
            Top = 48
            Width = 909
            Height = 310
            Hint = ''
            DataSource = dsEmitenteEndereco
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
            WebOptions.PageSize = 100
            LoadMask.Message = 'Carregando Dados...'
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            OnCellClick = dbItensCellClick
            OnColumnSort = dbItensColumnSort
            OnFieldImage = dbItensFieldImage
            Columns = <
              item
                FieldName = 'FC_IMG_EDIT'
                Title.Caption = 'Ed'
                Width = 50
                ImageOptions.Visible = True
                ImageOptions.Width = 16
                ImageOptions.Height = 16
              end
              item
                FieldName = 'FC_IMG_DEL'
                Title.Caption = 'Dl'
                Width = 50
                ImageOptions.Visible = True
                ImageOptions.Width = 16
                ImageOptions.Height = 16
              end
              item
                FieldName = 'codLocal'
                Title.Caption = 'Local'
                Width = 154
                Sortable = True
              end
              item
                FieldName = 'endereco'
                Title.Caption = 'Endere'#231'o'
                Width = 286
                Sortable = True
              end
              item
                FieldName = 'bairro'
                Title.Caption = 'Bairro'
                Width = 154
                Sortable = True
              end
              item
                FieldName = 'cep'
                Title.Caption = 'CEP'
                Width = 135
                Sortable = True
              end
              item
                FieldName = 'numEndereco'
                Title.Caption = 'N'#250'm Endere'#231'o'
                Width = 122
              end
              item
                FieldName = 'complemento'
                Title.Caption = 'Complemento'
                Width = 148
              end
              item
                FieldName = 'FC_CIDADE'
                Title.Caption = 'Cidade'
                Width = 200
                Sortable = True
              end
              item
                FieldName = 'FC_DSC_PADRAO'
                Title.Caption = 'Padr'#227'o'
                Width = 72
              end>
          end
        end
        object tsEnderManut: TUniTabSheet
          Hint = ''
          TabVisible = False
          Caption = 'Manuten'#231#227'o'
          object UniLabel11: TUniLabel
            Left = 32
            Top = 125
            Width = 37
            Height = 13
            Hint = ''
            Caption = 'Cidade:'
            TabOrder = 8
          end
          object UniPanel5: TUniPanel
            Left = 0
            Top = 0
            Width = 909
            Height = 48
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 9
            BorderStyle = ubsFrameRaised
            Caption = ''
            object UniBitBtn1: TUniBitBtn
              Left = 16
              Top = 10
              Width = 113
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5DADADACCCCCCCCCCCCCCCCCCCCCCCCDADADAF5F5F5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDA3C0B3369D6E008C4B00
                8B4A008B4A008C4B369D6EA3C0B3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E1E1E144A27700905001A16901AB7601AC7901AC7901AB7601A16900905055A8
                82E1E1E1FFFFFFFFFFFFFFFFFFF5F5F555A88200915202AC7700C38C00D79B00
                DA9C00DA9C00D79C01C38C01AB7600925355A882F5F5F5FFFFFFFFFFFFAECABE
                0090510FB48300D29800D59800D19200CF9000D09100D39600D69B00D19801AB
                76009050AECBBEFFFFFFFFFFFF369D6C16AB7810C99600D39700CD8CFFFFFFFF
                FFFFFFFFFF00CC8C00D19500D59B01C18C01A169369E6EFFFFFFFFFFFF008A48
                39C49D00D19800CB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CA8C00CF9600D2
                9B01AB76008C4BFFFFFFFFFFFF00894652D2B000CC92FFFFFFFFFFFFFFFFFF00
                C484FFFFFFFFFFFFFFFFFF00C88D00D09A00AD79008B4AFFFFFFFFFFFF008845
                68DDBE00C991FFFFFFFFFFFF00C68C00C89100C58BFFFFFFFFFFFFFFFFFF00CC
                9600AD78008B4AFFFFFFFFFFFF00884676E0C600CB9800C59000C69100C89500
                C99700C89400C38CFFFFFFFFFFFF00C79200AB75008C4BFFFFFFFFFFFF41A675
                59C9A449DEBC00C79400C89700C99800C99900C99800C79400C38EFFFFFF00BD
                8A00A06740A878FFFFFFFFFFFFCCE8DB0A9458ADF8E918D0A700C49500C69700
                C69800C79800C79800C69700C59612B585008F50CCE8DBFFFFFFFFFFFFFFFFFF
                55B185199C63BCFFF75EE4C900C59A00C39600C49700C59A22CAA22FC1960293
                556ABC96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABB940E965974D5B6A0F4E194
                EFDC7CE6CC5ED6B52EB58703915255B288FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCE8DB44A87700874400874300874400894644AA7ACCE8DBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'GRAVAR'
              TabOrder = 1
              OnClick = UniBitBtn1Click
            end
            object UniBitBtn2: TUniBitBtn
              Left = 135
              Top = 10
              Width = 114
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFEDEDEDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEDEDEDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED9499C82C3CC02B3BBE2B3ABE2B
                3ABE2B3ABE2B3BBE2C3CC09499C8EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
                969BC92F3EC35F71F9697DFF697CFF697CFF697CFF697DFF5F71F92F3EC3969B
                C9EDEDEDFFFFFFFFFFFFEDEDED969BC92F3EC2586BF65F74FF5D72FE5E72FD5E
                73FD5E72FD5D72FE5F74FF586BF62F3EC2969BC9EDEDEDFFFFFF9499C8303FC2
                5568F3586CFC4E64F94D63F85468F9576BF95468F94D63F84E64F9586CFC5568
                F3303FC29499C8FFFFFF2D3DC05367F2556BFA4960F7FFFFFFFFFFFF3E56F647
                5EF63E56F6FFFFFFFFFFFF4960F7556BFA5166F22D3DC0FFFFFF2B3BBF6276FC
                4D64F64259F4FFFFFFFFFFFFFFFFFF2C46F3FFFFFFFFFFFFFFFFFF4259F44E64
                F65F75FC2C3BBFFFFFFF2A3ABF7386FA495FF3435AF36E80F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF6E80F6435AF3495FF36E81FA2B3ABFFFFFFF2939BF8696FB
                425AF14259F1354EF05B70F2FFFFFFFFFFFFFFFFFF5B70F2354EF04259F1435B
                F17D90F92A39BFFFFFFF2737BF9AA8FB3A55EF3953EE2844EDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF2844ED3953EE3B55EF8E9DFA2838BFFFFFFF2637BF9FABF1
                314CED2B47EBFFFFFFFFFFFFFFFFFF5369EFFFFFFFFFFFFFFFFFFF2C47EB314C
                ED9FABF12737BFFFFFFF2838C19FABF18091F4213EE8FFFFFFFFFFFF5D72EE23
                40E85D72EEFFFFFFFFFFFF213EE88091F49FABF12838C1FFFFFFB4BAE92E3EC3
                97A5EF778AF25B71EE6074EE2643E62C48E72643E66074EE5B71EE778AF297A5
                EF2E3EC3B4BAE9FFFFFFFFFFFFB6BCEA2E3EC295A2EE7688F01E3BE42340E525
                41E52340E51E3BE47688F095A2EE2E3EC2B6BCEAFFFFFFFFFFFFFFFFFFFFFFFF
                B6BCEA2F3DC394A0EFADB9F8ADB8F7ADB9F7ADB8F7ADB9F894A0EF2F3DC3B6BC
                EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9E9303FC44555CE4454CD43
                54CD4454CD4555CE303FC4B4B9E9FFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'CANCELAR'
              TabOrder = 2
              OnClick = UniBitBtn2Click
            end
          end
          object UniLabel12: TUniLabel
            Left = 32
            Top = 70
            Width = 69
            Height = 13
            Hint = ''
            Caption = 'Local Entrega:'
            TabOrder = 10
          end
          object edtLocal: TUniDBEdit
            Left = 32
            Top = 89
            Width = 142
            Height = 22
            Hint = ''
            DataField = 'codLocal'
            DataSource = dsEmitenteEndereco
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object lcCidade: TUniDBLookupComboBox
            Left = 32
            Top = 144
            Width = 366
            Hint = ''
            ListField = 'cidadeEstado'
            ListSource = dsCidade
            KeyField = 'codCidade'
            ListFieldIndex = 0
            DataField = 'codCidade'
            DataSource = dsEmitenteEndereco
            TabOrder = 2
            Color = clWindow
            Style = csDropDown
          end
          object UniLabel13: TUniLabel
            Left = 32
            Top = 180
            Width = 49
            Height = 13
            Hint = ''
            Caption = 'Endere'#231'o:'
            TabOrder = 11
          end
          object edtEndereco: TUniDBEdit
            Left = 32
            Top = 199
            Width = 265
            Height = 22
            Hint = ''
            DataField = 'endereco'
            DataSource = dsEmitenteEndereco
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edtNumero: TUniDBEdit
            Left = 303
            Top = 199
            Width = 95
            Height = 22
            Hint = ''
            DataField = 'numEndereco'
            DataSource = dsEmitenteEndereco
            TabOrder = 4
          end
          object UniLabel14: TUniLabel
            Left = 303
            Top = 180
            Width = 41
            Height = 13
            Hint = ''
            Caption = 'N'#250'mero:'
            TabOrder = 12
          end
          object edtBairro: TUniDBEdit
            Left = 32
            Top = 246
            Width = 129
            Height = 22
            Hint = ''
            DataField = 'bairro'
            DataSource = dsEmitenteEndereco
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object UniLabel15: TUniLabel
            Left = 32
            Top = 227
            Width = 32
            Height = 13
            Hint = ''
            Caption = 'Bairro:'
            TabOrder = 13
          end
          object UniLabel16: TUniLabel
            Left = 167
            Top = 227
            Width = 23
            Height = 13
            Hint = ''
            Caption = 'CEP:'
            TabOrder = 14
          end
          object edtCep: TUniDBEdit
            Left = 167
            Top = 246
            Width = 129
            Height = 22
            Hint = ''
            DataField = 'cep'
            DataSource = dsEmitenteEndereco
            TabOrder = 6
          end
          object UniLabel17: TUniLabel
            Left = 32
            Top = 275
            Width = 69
            Height = 13
            Hint = ''
            Caption = 'Complemento:'
            TabOrder = 15
          end
          object edtComplemento: TUniDBEdit
            Left = 32
            Top = 294
            Width = 129
            Height = 22
            Hint = ''
            DataField = 'complemento'
            DataSource = dsEmitenteEndereco
            TabOrder = 7
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 213
            Top = 85
            Width = 131
            Height = 17
            Hint = ''
            DataField = 'padrao'
            DataSource = dsEmitenteEndereco
            ValueChecked = '1'
            ValueUnchecked = '0'
            Caption = 'Endere'#231'o Padr'#227'o'
            TabOrder = 1
          end
          object UniLabel22: TUniLabel
            Left = 216
            Top = 112
            Width = 188
            Height = 13
            Hint = ''
            Caption = '(Permitido somente um ende'#231'o padr'#227'o)'
            ParentFont = False
            Font.Color = clNavy
            Font.Style = [fsUnderline]
            TabOrder = 16
          end
        end
      end
    end
    object tsDadosBancarios: TUniTabSheet
      Hint = ''
      Caption = 'Dados Banc'#225'rios'
      object UniGroupBox3: TUniGroupBox
        Left = 0
        Top = 0
        Width = 917
        Height = 88
        Hint = ''
        Caption = 'Emitente'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        object UniDBEdit3: TUniDBEdit
          Left = 27
          Top = 28
          Width = 465
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'nomeEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object UniDBEdit4: TUniDBEdit
          Left = 498
          Top = 28
          Width = 90
          Height = 22
          Hint = ''
          Enabled = False
          DataField = 'codEmitente'
          DataSource = dsEmitente
          CharCase = ecUpperCase
          TabOrder = 2
        end
      end
      object pgContasBanco: TUniPageControl
        Left = 0
        Top = 88
        Width = 917
        Height = 386
        Hint = ''
        ActivePage = tsContaBancoLista
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ExplicitTop = 90
        object tsContaBancoLista: TUniTabSheet
          Hint = ''
          Caption = 'Listagem'
          object UniPanel6: TUniPanel
            Left = 0
            Top = 0
            Width = 909
            Height = 48
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            BorderStyle = ubsFrameRaised
            Caption = ''
            object btNovoItContaBanco: TUniBitBtn
              Left = 16
              Top = 10
              Width = 113
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5DADADACCCCCCCCCCCCCCCCCCCCCCCCDADADAF5F5F5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDA3C0B3369D6E008C4B00
                8B4A008B4A008C4B369D6EA3C0B3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E1E1E144A27700905001A16901AB7601AC7901AC7901AB7601A16900905055A8
                82E1E1E1FFFFFFFFFFFFFFFFFFF5F5F555A88200915202AC7700C38C00D79B00
                DA9C00DA9C00D79C01C38C01AB7600925355A882F5F5F5FFFFFFFFFFFFAECABE
                0090510FB48300D29800D59800D19200CF9000D09100D39600D69B00D19801AB
                76009050AECBBEFFFFFFFFFFFF369D6C16AB7810C99600D39700CD8CFFFFFFFF
                FFFFFFFFFF00CC8C00D19500D59B01C18C01A169369E6EFFFFFFFFFFFF008A48
                39C49D00D19800CB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CA8C00CF9600D2
                9B01AB76008C4BFFFFFFFFFFFF00894652D2B000CC92FFFFFFFFFFFFFFFFFF00
                C484FFFFFFFFFFFFFFFFFF00C88D00D09A00AD79008B4AFFFFFFFFFFFF008845
                68DDBE00C991FFFFFFFFFFFF00C68C00C89100C58BFFFFFFFFFFFFFFFFFF00CC
                9600AD78008B4AFFFFFFFFFFFF00884676E0C600CB9800C59000C69100C89500
                C99700C89400C38CFFFFFFFFFFFF00C79200AB75008C4BFFFFFFFFFFFF41A675
                59C9A449DEBC00C79400C89700C99800C99900C99800C79400C38EFFFFFF00BD
                8A00A06740A878FFFFFFFFFFFFCCE8DB0A9458ADF8E918D0A700C49500C69700
                C69800C79800C79800C69700C59612B585008F50CCE8DBFFFFFFFFFFFFFFFFFF
                55B185199C63BCFFF75EE4C900C59A00C39600C49700C59A22CAA22FC1960293
                556ABC96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABB940E965974D5B6A0F4E194
                EFDC7CE6CC5ED6B52EB58703915255B288FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCE8DB44A87700874400874300874400894644AA7ACCE8DBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'NOVO ITEM'
              TabOrder = 1
              OnClick = btNovoItContaBancoClick
            end
            object btCancelItContaBanco: TUniBitBtn
              Left = 135
              Top = 10
              Width = 114
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFEDEDEDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEDEDEDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED9499C82C3CC02B3BBE2B3ABE2B
                3ABE2B3ABE2B3BBE2C3CC09499C8EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
                969BC92F3EC35F71F9697DFF697CFF697CFF697CFF697DFF5F71F92F3EC3969B
                C9EDEDEDFFFFFFFFFFFFEDEDED969BC92F3EC2586BF65F74FF5D72FE5E72FD5E
                73FD5E72FD5D72FE5F74FF586BF62F3EC2969BC9EDEDEDFFFFFF9499C8303FC2
                5568F3586CFC4E64F94D63F85468F9576BF95468F94D63F84E64F9586CFC5568
                F3303FC29499C8FFFFFF2D3DC05367F2556BFA4960F7FFFFFFFFFFFF3E56F647
                5EF63E56F6FFFFFFFFFFFF4960F7556BFA5166F22D3DC0FFFFFF2B3BBF6276FC
                4D64F64259F4FFFFFFFFFFFFFFFFFF2C46F3FFFFFFFFFFFFFFFFFF4259F44E64
                F65F75FC2C3BBFFFFFFF2A3ABF7386FA495FF3435AF36E80F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF6E80F6435AF3495FF36E81FA2B3ABFFFFFFF2939BF8696FB
                425AF14259F1354EF05B70F2FFFFFFFFFFFFFFFFFF5B70F2354EF04259F1435B
                F17D90F92A39BFFFFFFF2737BF9AA8FB3A55EF3953EE2844EDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF2844ED3953EE3B55EF8E9DFA2838BFFFFFFF2637BF9FABF1
                314CED2B47EBFFFFFFFFFFFFFFFFFF5369EFFFFFFFFFFFFFFFFFFF2C47EB314C
                ED9FABF12737BFFFFFFF2838C19FABF18091F4213EE8FFFFFFFFFFFF5D72EE23
                40E85D72EEFFFFFFFFFFFF213EE88091F49FABF12838C1FFFFFFB4BAE92E3EC3
                97A5EF778AF25B71EE6074EE2643E62C48E72643E66074EE5B71EE778AF297A5
                EF2E3EC3B4BAE9FFFFFFFFFFFFB6BCEA2E3EC295A2EE7688F01E3BE42340E525
                41E52340E51E3BE47688F095A2EE2E3EC2B6BCEAFFFFFFFFFFFFFFFFFFFFFFFF
                B6BCEA2F3DC394A0EFADB9F8ADB8F7ADB9F7ADB8F7ADB9F894A0EF2F3DC3B6BC
                EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9E9303FC44555CE4454CD43
                54CD4454CD4555CE303FC4B4B9E9FFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'CANCELAR'
              TabOrder = 2
              OnClick = btCancelItContaBancoClick
            end
            object edtFiltroContaBanco: TUniEdit
              Left = 366
              Top = 12
              Width = 283
              Hint = ''
              CharCase = ecUpperCase
              Text = ''
              TabOrder = 3
              EmptyText = 'Pesquisar'
              ClearButton = True
              OnChange = edtFiltroContaBancoChange
              OnKeyPress = edtFiltroContaBancoKeyPress
            end
            object UniLabel18: TUniLabel
              Left = 296
              Top = 16
              Width = 64
              Height = 13
              Hint = ''
              Caption = 'Filtro R'#225'pido:'
              TabOrder = 4
            end
          end
          object dbContaBanco: TUniDBGrid
            Left = 0
            Top = 48
            Width = 909
            Height = 310
            Hint = ''
            DataSource = dsEmitenteContaBanco
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
            WebOptions.PageSize = 100
            LoadMask.Message = 'Carregando Dados...'
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            OnCellClick = dbContaBancoCellClick
            OnColumnSort = dbContaBancoColumnSort
            OnFieldImage = dbContaBancoFieldImage
            Columns = <
              item
                FieldName = 'FC_IMG_EDIT'
                Title.Caption = 'Ed'
                Width = 50
                Visible = False
                ImageOptions.Visible = True
                ImageOptions.Width = 16
                ImageOptions.Height = 16
              end
              item
                FieldName = 'FC_IMG_DEL'
                Title.Caption = 'Dl'
                Width = 50
                ImageOptions.Visible = True
                ImageOptions.Width = 16
                ImageOptions.Height = 16
              end
              item
                FieldName = 'codBanco'
                Title.Caption = 'Banco'
                Width = 64
                Sortable = True
              end
              item
                FieldName = 'FC_NOME_BANCO'
                Title.Caption = 'Nome Banco'
                Width = 304
                Sortable = True
              end
              item
                FieldName = 'agencia'
                Title.Caption = 'Ag'#234'ncia'
                Width = 191
                Sortable = True
              end
              item
                FieldName = 'contaCorrente'
                Title.Caption = 'Conta Corrente'
                Width = 275
                Sortable = True
              end>
          end
        end
        object tsContaBancoManut: TUniTabSheet
          Hint = ''
          TabVisible = False
          Caption = 'Manuten'#231#227'o'
          object UniLabel19: TUniLabel
            Left = 32
            Top = 74
            Width = 33
            Height = 13
            Hint = ''
            Caption = 'Banco:'
            TabOrder = 3
          end
          object UniPanel7: TUniPanel
            Left = 0
            Top = 0
            Width = 909
            Height = 48
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 4
            BorderStyle = ubsFrameRaised
            Caption = ''
            object btGravarMnContaBanco: TUniBitBtn
              Left = 16
              Top = 10
              Width = 113
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5DADADACCCCCCCCCCCCCCCCCCCCCCCCDADADAF5F5F5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDA3C0B3369D6E008C4B00
                8B4A008B4A008C4B369D6EA3C0B3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E1E1E144A27700905001A16901AB7601AC7901AC7901AB7601A16900905055A8
                82E1E1E1FFFFFFFFFFFFFFFFFFF5F5F555A88200915202AC7700C38C00D79B00
                DA9C00DA9C00D79C01C38C01AB7600925355A882F5F5F5FFFFFFFFFFFFAECABE
                0090510FB48300D29800D59800D19200CF9000D09100D39600D69B00D19801AB
                76009050AECBBEFFFFFFFFFFFF369D6C16AB7810C99600D39700CD8CFFFFFFFF
                FFFFFFFFFF00CC8C00D19500D59B01C18C01A169369E6EFFFFFFFFFFFF008A48
                39C49D00D19800CB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CA8C00CF9600D2
                9B01AB76008C4BFFFFFFFFFFFF00894652D2B000CC92FFFFFFFFFFFFFFFFFF00
                C484FFFFFFFFFFFFFFFFFF00C88D00D09A00AD79008B4AFFFFFFFFFFFF008845
                68DDBE00C991FFFFFFFFFFFF00C68C00C89100C58BFFFFFFFFFFFFFFFFFF00CC
                9600AD78008B4AFFFFFFFFFFFF00884676E0C600CB9800C59000C69100C89500
                C99700C89400C38CFFFFFFFFFFFF00C79200AB75008C4BFFFFFFFFFFFF41A675
                59C9A449DEBC00C79400C89700C99800C99900C99800C79400C38EFFFFFF00BD
                8A00A06740A878FFFFFFFFFFFFCCE8DB0A9458ADF8E918D0A700C49500C69700
                C69800C79800C79800C69700C59612B585008F50CCE8DBFFFFFFFFFFFFFFFFFF
                55B185199C63BCFFF75EE4C900C59A00C39600C49700C59A22CAA22FC1960293
                556ABC96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABB940E965974D5B6A0F4E194
                EFDC7CE6CC5ED6B52EB58703915255B288FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCE8DB44A87700874400874300874400894644AA7ACCE8DBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'GRAVAR'
              TabOrder = 1
              OnClick = btGravarMnContaBancoClick
            end
            object btCancelMnContaBanco: TUniBitBtn
              Left = 135
              Top = 10
              Width = 114
              Height = 30
              Hint = ''
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFEDEDEDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEDEDEDFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED9499C82C3CC02B3BBE2B3ABE2B
                3ABE2B3ABE2B3BBE2C3CC09499C8EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
                969BC92F3EC35F71F9697DFF697CFF697CFF697CFF697DFF5F71F92F3EC3969B
                C9EDEDEDFFFFFFFFFFFFEDEDED969BC92F3EC2586BF65F74FF5D72FE5E72FD5E
                73FD5E72FD5D72FE5F74FF586BF62F3EC2969BC9EDEDEDFFFFFF9499C8303FC2
                5568F3586CFC4E64F94D63F85468F9576BF95468F94D63F84E64F9586CFC5568
                F3303FC29499C8FFFFFF2D3DC05367F2556BFA4960F7FFFFFFFFFFFF3E56F647
                5EF63E56F6FFFFFFFFFFFF4960F7556BFA5166F22D3DC0FFFFFF2B3BBF6276FC
                4D64F64259F4FFFFFFFFFFFFFFFFFF2C46F3FFFFFFFFFFFFFFFFFF4259F44E64
                F65F75FC2C3BBFFFFFFF2A3ABF7386FA495FF3435AF36E80F6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF6E80F6435AF3495FF36E81FA2B3ABFFFFFFF2939BF8696FB
                425AF14259F1354EF05B70F2FFFFFFFFFFFFFFFFFF5B70F2354EF04259F1435B
                F17D90F92A39BFFFFFFF2737BF9AA8FB3A55EF3953EE2844EDFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF2844ED3953EE3B55EF8E9DFA2838BFFFFFFF2637BF9FABF1
                314CED2B47EBFFFFFFFFFFFFFFFFFF5369EFFFFFFFFFFFFFFFFFFF2C47EB314C
                ED9FABF12737BFFFFFFF2838C19FABF18091F4213EE8FFFFFFFFFFFF5D72EE23
                40E85D72EEFFFFFFFFFFFF213EE88091F49FABF12838C1FFFFFFB4BAE92E3EC3
                97A5EF778AF25B71EE6074EE2643E62C48E72643E66074EE5B71EE778AF297A5
                EF2E3EC3B4BAE9FFFFFFFFFFFFB6BCEA2E3EC295A2EE7688F01E3BE42340E525
                41E52340E51E3BE47688F095A2EE2E3EC2B6BCEAFFFFFFFFFFFFFFFFFFFFFFFF
                B6BCEA2F3DC394A0EFADB9F8ADB8F7ADB9F7ADB8F7ADB9F894A0EF2F3DC3B6BC
                EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9E9303FC44555CE4454CD43
                54CD4454CD4555CE303FC4B4B9E9FFFFFFFFFFFFFFFFFFFFFFFF}
              Caption = 'CANCELAR'
              TabOrder = 2
              OnClick = btCancelMnContaBancoClick
            end
          end
          object UniLabel20: TUniLabel
            Left = 32
            Top = 125
            Width = 42
            Height = 13
            Hint = ''
            Caption = 'Ag'#234'ncia:'
            TabOrder = 5
          end
          object edtAgencia: TUniDBEdit
            Left = 32
            Top = 144
            Width = 142
            Height = 22
            Hint = ''
            DataField = 'agencia'
            DataSource = dsEmitenteContaBanco
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object lcBanco: TUniDBLookupComboBox
            Left = 32
            Top = 93
            Width = 366
            Hint = ''
            ListField = 'nomeBanco'
            ListSource = dsBanco
            KeyField = 'codBanco'
            ListFieldIndex = 0
            DataField = 'codBanco'
            DataSource = dsEmitenteContaBanco
            TabOrder = 0
            Color = clWindow
            Style = csDropDown
          end
          object UniLabel21: TUniLabel
            Left = 32
            Top = 180
            Width = 79
            Height = 13
            Hint = ''
            Caption = 'Conta Corrente:'
            TabOrder = 6
          end
          object edtCC: TUniDBEdit
            Left = 32
            Top = 199
            Width = 142
            Height = 22
            Hint = ''
            DataField = 'contaCorrente'
            DataSource = dsEmitenteContaBanco
            CharCase = ecUpperCase
            TabOrder = 2
          end
        end
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 744
    Top = 192
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
  object dsEmitente: TDataSource
    DataSet = fdEmitente
    Left = 628
    Top = 288
  end
  object fdEmitente: TFDQuery
    OnCalcFields = fdEmitenteCalcFields
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codEmitente'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcEmitente')
    Left = 580
    Top = 248
    object fdEmitentecodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitentecodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitentecodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitentenomeEmitente: TStringField
      FieldName = 'nomeEmitente'
      Origin = 'nomeEmitente'
      Required = True
      Size = 100
    end
    object fdEmitentecgc: TStringField
      FieldName = 'cgc'
      Origin = 'cgc'
      Required = True
      Size = 15
    end
    object fdEmitentesituacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
    end
    object fdEmitenteidentificacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'identificacao'
      Origin = 'identificacao'
    end
    object fdEmitenteemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 100
    end
    object fdEmitentetelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object fdEmitentecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
    end
    object fdEmitentedataImplantacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataImplantacao'
      Origin = 'dataImplantacao'
    end
    object fdEmitenteFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdEmitenteFC_IMG_VIS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_VIS'
      Size = 50
    end
    object fdEmitenteFC_IMG_DEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_DEL'
      Size = 50
    end
    object fdEmitenteFC_SIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_SIT'
      Size = 30
    end
    object fdEmitenteFC_IMG_MAPA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_MAPA'
      Size = 50
    end
    object fdEmitenteFC_IMG_BANCO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_BANCO'
      Size = 50
    end
  end
  object fdEmitenteEndereco: TFDQuery
    OnCalcFields = fdEmitenteEnderecoCalcFields
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codLocal'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcEmitenteEndereco')
    Left = 688
    Top = 336
    object fdEmitenteEnderecocodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteEnderecocodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteEnderecocodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteEnderecocodLocal: TStringField
      FieldName = 'codLocal'
      Origin = 'codLocal'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteEnderecocodCidade: TIntegerField
      FieldName = 'codCidade'
      Origin = 'codCidade'
      Required = True
    end
    object fdEmitenteEnderecoendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 100
    end
    object fdEmitenteEnderecobairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 25
    end
    object fdEmitenteEnderecocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object fdEmitenteEndereconumEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numEndereco'
      Origin = 'numEndereco'
      Size = 10
    end
    object fdEmitenteEnderecocomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 30
    end
    object fdEmitenteEnderecopadrao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'padrao'
      Origin = 'padrao'
    end
    object fdEmitenteEnderecoFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdEmitenteEnderecoFC_IMG_DEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_DEL'
      Size = 50
    end
    object fdEmitenteEnderecoFC_CIDADE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_CIDADE'
      Size = 100
    end
    object fdEmitenteEnderecoFC_DSC_PADRAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_DSC_PADRAO'
      Size = 10
    end
  end
  object dsEmitenteEndereco: TDataSource
    DataSet = fdEmitenteEndereco
    Left = 784
    Top = 336
  end
  object fdCidade: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select gcCidade.*,'
      'concat(nomeCidade,'#39' '#39',uf) as cidadeEstado'
      ' from gcCidade')
    Left = 704
    Top = 248
    object fdCidadecodCidade: TIntegerField
      FieldName = 'codCidade'
      Origin = 'codCidade'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdCidadecodIbge: TIntegerField
      FieldName = 'codIbge'
      Origin = 'codIbge'
      Required = True
    end
    object fdCidadenomeCidade: TStringField
      FieldName = 'nomeCidade'
      Origin = 'nomeCidade'
      Required = True
      Size = 50
    end
    object fdCidadeuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 5
    end
    object fdCidadepais: TStringField
      FieldName = 'pais'
      Origin = 'pais'
      Required = True
      Size = 50
    end
    object fdCidadecidadeEstado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidadeEstado'
      Origin = 'cidadeEstado'
      ProviderFlags = []
      ReadOnly = True
      Size = 56
    end
  end
  object dsCidade: TDataSource
    DataSet = fdCidade
    Left = 784
    Top = 384
  end
  object fdEmitenteContaBanco: TFDQuery
    OnCalcFields = fdEmitenteContaBancoCalcFields
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codBanco'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcEmitenteContasBancaria')
    Left = 476
    Top = 408
    object fdEmitenteContaBancocodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteContaBancocodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteContaBancocodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteContaBancocodBanco: TIntegerField
      FieldName = 'codBanco'
      Origin = 'codBanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdEmitenteContaBancoagencia: TStringField
      FieldName = 'agencia'
      Origin = 'agencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object fdEmitenteContaBancocontaCorrente: TStringField
      FieldName = 'contaCorrente'
      Origin = 'contaCorrente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object fdEmitenteContaBancoFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdEmitenteContaBancoFC_IMG_DEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_DEL'
      Size = 50
    end
    object fdEmitenteContaBancoFC_NOME_BANCO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_NOME_BANCO'
      Size = 50
    end
  end
  object dsEmitenteContaBanco: TDataSource
    DataSet = fdEmitenteContaBanco
    Left = 620
    Top = 416
  end
  object fdBanco: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcBanco')
    Left = 456
    Top = 304
    object fdBancocodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdBancocodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdBancocodBanco: TIntegerField
      FieldName = 'codBanco'
      Origin = 'codBanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdBanconomeBanco: TStringField
      FieldName = 'nomeBanco'
      Origin = 'nomeBanco'
      Required = True
      Size = 50
    end
  end
  object dsBanco: TDataSource
    DataSet = fdBanco
    Left = 528
    Top = 328
  end
end
