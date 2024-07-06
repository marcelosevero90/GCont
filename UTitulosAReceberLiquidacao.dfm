object FTitulosAReceberLiquidacao: TFTitulosAReceberLiquidacao
  Left = 0
  Top = 0
  Width = 1079
  Height = 568
  OnCreate = UniFrameCreate
  TabOrder = 0
  object pgMenu: TUniPageControl
    Left = 0
    Top = 0
    Width = 1079
    Height = 568
    Hint = ''
    ActivePage = tsLista
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsLista: TUniTabSheet
      Hint = ''
      Caption = 'Listagem'
      DesignSize = (
        1071
        540)
      object UniToolBar1: TUniToolBar
        Left = 0
        Top = 0
        Width = 1071
        Height = 33
        Hint = ''
        Images = UniNativeImageList1
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        object btAtualizarDados: TUniBitBtn
          Left = 0
          Top = 0
          Width = 133
          Height = 33
          Hint = ''
          Caption = 'PESQUISAR'
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.Message = 'Atualizando Dados...Aguarde!'
          Images = UniNativeImageList1
          ImageIndex = 1
          OnClick = btAtualizarDadosClick
        end
      end
      object UniGroupBox1: TUniGroupBox
        Left = 0
        Top = 50
        Width = 1071
        Height = 490
        Hint = ''
        Caption = 'Filtro T'#237'tulos A Receber'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object UniLabel2: TUniLabel
          Left = 32
          Top = 31
          Width = 63
          Height = 13
          Hint = ''
          Caption = 'Implanta'#231#227'o:'
          TabOrder = 1
        end
        object dtImplantIni: TUniDateTimePicker
          Left = 101
          Top = 27
          Width = 120
          Hint = ''
          DateTime = 45468.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
        end
        object dtImplantFim: TUniDateTimePicker
          Left = 237
          Top = 27
          Width = 120
          Hint = ''
          DateTime = 45468.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 3
        end
        object UniLabel1: TUniLabel
          Left = 37
          Top = 61
          Width = 59
          Height = 13
          Hint = ''
          Caption = 'Vencimento:'
          TabOrder = 4
        end
        object dtVenctoIni: TUniDateTimePicker
          Left = 101
          Top = 57
          Width = 120
          Hint = ''
          DateTime = 45468.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 5
        end
        object dtVenctoFim: TUniDateTimePicker
          Left = 237
          Top = 57
          Width = 120
          Hint = ''
          DateTime = 45468.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 6
        end
        object UniGroupBox2: TUniGroupBox
          Left = 40
          Top = 135
          Width = 325
          Height = 238
          Hint = ''
          Caption = 'Clientes'
          TabOrder = 7
          object dbEmitFiltro: TUniDBGrid
            Left = 2
            Top = 51
            Width = 321
            Height = 185
            Hint = ''
            TitleFont.Height = -8
            DataSource = dsEmitente
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando Dados...'
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Height = -8
            ParentFont = False
            TabOrder = 1
            Columns = <
              item
                FieldName = 'FC_SELEC'
                Title.Caption = 'Sel'
                Title.Font.Height = -8
                Width = 24
                Font.Height = -8
                CheckBoxField.AutoPost = True
                CheckBoxField.DisplayValues = 'S;N'
              end
              item
                FieldName = 'codEmitente'
                Title.Caption = 'C'#243'digo'
                Title.Font.Height = -8
                Width = 44
                Font.Height = -8
              end
              item
                FieldName = 'nomeEmitente'
                Title.Caption = 'Nome'
                Title.Font.Height = -8
                Width = 147
                Font.Height = -8
              end
              item
                FieldName = 'cgc'
                Title.Caption = 'CGC'
                Title.Font.Height = -8
                Width = 75
                Font.Height = -8
              end>
          end
          object UniPanel5: TUniPanel
            Left = 2
            Top = 15
            Width = 321
            Height = 36
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            BorderStyle = ubsNone
            Caption = ''
            object btMarcaTdsEmit: TUniBitBtn
              Left = 0
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 1
              ScreenMask.Enabled = True
              ScreenMask.Message = 'Atualizando...'
              Images = UniNativeImageList1
              ImageIndex = 16
              OnClick = btMarcaTdsEmitClick
            end
            object btDesmarcaTdsEmit: TUniBitBtn
              Left = 42
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 2
              ScreenMask.Enabled = True
              ScreenMask.Message = 'Atualizando...'
              Images = UniNativeImageList1
              ImageIndex = 15
              OnClick = btDesmarcaTdsEmitClick
            end
            object edtPesqEmitRap: TUniEdit
              Left = 106
              Top = 4
              Width = 176
              Hint = ''
              CharCase = ecUpperCase
              Text = ''
              TabOrder = 3
              EmptyText = 'Pesquisar'
              ClearButton = True
              OnChange = edtPesqEmitRapChange
              OnKeyPress = edtPesqEmitRapKeyPress
            end
          end
        end
        object UniGroupBox3: TUniGroupBox
          Left = 371
          Top = 135
          Width = 325
          Height = 238
          Hint = ''
          Caption = 'Portadores'
          TabOrder = 8
          object UniPanel6: TUniPanel
            Left = 2
            Top = 15
            Width = 321
            Height = 36
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = ''
            object UniBitBtn3: TUniBitBtn
              Left = 0
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 1
              Images = UniNativeImageList1
              ImageIndex = 16
              OnClick = UniBitBtn3Click
            end
            object UniBitBtn4: TUniBitBtn
              Left = 42
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 2
              Images = UniNativeImageList1
              ImageIndex = 15
              OnClick = UniBitBtn4Click
            end
            object edtPesqPortRap: TUniEdit
              Left = 108
              Top = 3
              Width = 183
              Hint = ''
              CharCase = ecUpperCase
              Text = ''
              TabOrder = 3
              EmptyText = 'Pesquisar'
              ClearButton = True
              OnChange = edtPesqPortRapChange
              OnKeyPress = edtPesqPortRapKeyPress
            end
          end
          object dbPortadFiltro: TUniDBGrid
            Left = 2
            Top = 51
            Width = 321
            Height = 185
            Hint = ''
            TitleFont.Height = -8
            DataSource = dsPortador
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando Dados...'
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Height = -8
            ParentFont = False
            TabOrder = 2
            Columns = <
              item
                FieldName = 'FC_SELEC'
                Title.Caption = 'Sel'
                Title.Font.Height = -8
                Width = 32
                Font.Height = -8
              end
              item
                FieldName = 'codPortador'
                Title.Caption = 'Portador'
                Title.Font.Height = -8
                Width = 99
                Font.Height = -8
              end
              item
                FieldName = 'nomePortador'
                Title.Caption = 'Nome'
                Title.Font.Height = -8
                Width = 156
                Font.Height = -8
              end>
          end
        end
        object UniGroupBox4: TUniGroupBox
          Left = 702
          Top = 135
          Width = 325
          Height = 238
          Hint = ''
          Caption = 'Formas de Pagamento'
          TabOrder = 9
          object UniPanel7: TUniPanel
            Left = 2
            Top = 15
            Width = 321
            Height = 36
            Hint = ''
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
            BorderStyle = ubsNone
            Caption = ''
            object UniBitBtn5: TUniBitBtn
              Left = 0
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 1
              Images = UniNativeImageList1
              ImageIndex = 16
              OnClick = UniBitBtn5Click
            end
            object UniBitBtn6: TUniBitBtn
              Left = 42
              Top = 0
              Width = 42
              Height = 36
              Hint = ''
              Caption = ''
              Align = alLeft
              Anchors = [akLeft, akTop, akBottom]
              TabOrder = 2
              Images = UniNativeImageList1
              ImageIndex = 15
              OnClick = UniBitBtn6Click
            end
            object edtPesqFormaPagRap: TUniEdit
              Left = 109
              Top = 4
              Width = 183
              Hint = ''
              CharCase = ecUpperCase
              Text = ''
              TabOrder = 3
              EmptyText = 'Pesquisar'
              ClearButton = True
              OnChange = edtPesqFormaPagRapChange
              OnKeyPress = edtPesqFormaPagRapKeyPress
            end
          end
          object UniDBGrid1: TUniDBGrid
            Left = 2
            Top = 51
            Width = 321
            Height = 185
            Hint = ''
            TitleFont.Height = -8
            DataSource = dsFormaPagto
            WebOptions.Paged = False
            LoadMask.Message = 'Carregando Dados...'
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Height = -8
            ParentFont = False
            TabOrder = 2
            Columns = <
              item
                FieldName = 'FC_SELEC'
                Title.Caption = 'Sel'
                Title.Font.Height = -8
                Width = 24
                Font.Height = -8
              end
              item
                FieldName = 'codFormaPagto'
                Title.Caption = 'Forma Pag'
                Title.Font.Height = -8
                Width = 121
                Font.Height = -8
              end
              item
                FieldName = 'nomeFormaPagto'
                Title.Caption = 'Nome'
                Title.Font.Height = -8
                Width = 159
                Font.Height = -8
              end>
          end
        end
        object UniLabel5: TUniLabel
          Left = 77
          Top = 89
          Width = 18
          Height = 13
          Hint = ''
          Caption = 'OS:'
          TabOrder = 10
        end
        object edtOSIniFiltro: TUniNumberEdit
          Left = 101
          Top = 85
          Width = 120
          Hint = ''
          TabOrder = 11
          DecimalSeparator = ','
        end
        object edtOSFimFiltro: TUniNumberEdit
          Left = 237
          Top = 85
          Width = 120
          Hint = ''
          TabOrder = 12
          Value = 9999999999.000000000000000000
          DecimalSeparator = ','
        end
      end
      object UniPanel1: TUniPanel
        Left = 0
        Top = 33
        Width = 1071
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        BorderStyle = ubsNone
        Caption = ''
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 49
        Width = 1071
        Height = 1
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        BorderStyle = ubsNone
        Caption = ''
      end
      object UniPanel3: TUniPanel
        Left = 0
        Top = 41
        Width = 1071
        Height = 8
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        BorderStyle = ubsNone
        Caption = ''
      end
      object imgVis: TUniImage
        Left = 895
        Top = 110
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
        Left = 921
        Top = 128
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
      object imgCancel: TUniImage
        Left = 959
        Top = 141
        Width = 18
        Height = 25
        Hint = ''
        Visible = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C000002DD4944415478DA75936B489351
          18C7FFE77DA76E3AB54917ACA014B4BC0C747929AF83882CEA9341969A4485E4
          87C20CA248228C28C8A23E18665186A6427E0A22292997AE309DE2662B2B2DA8
          A40B337537E7DEBD3DEF6B1B5EE8C0F9700EE7FF7B2EE7FF30CC5B869CE4628E
          573485AE5C015114E946DA0C8C31387FFE824FF096E4755B9AFDEFA5376C9EB8
          8831BE25F9D011A8A2A321CE696506E9E11A1F87E54E03DD0BFB08D2BA002089
          C1712DC987CBC17DFF02FBA356B0A0205272F4CA07717616EADD45F0AD5E07CB
          ED7AC0E7932132C090AB2DA6149B92CB8F82FFF619DEF1AF001F04F7809120C1
          24F640999A0508B35044AF85B0663D2CF537A5E825B986A166D6B579A3985275
          0ABC14B9BD11ABBA46E59226AA0EC06332225897054DED7DF9EE477E2CD48565
          102893C1DACBC87B6565EC7966BCA83B791ADEC61BF051B4E54F2C81A6FEA9D8
          8365750F03E7DF055A70549AA2EC184C572E41FFFA9D04D820E6545651F47B54
          AE08717202514FAD58BC6CDB12C02235D4160E610585E869B805BD9CC1960431
          A7B414CEEE6772C745C734B8D878845F6B0A88A72B4BE01B1D010B0B07380665
          7A168C6DEDD01B870990952866EFDA8199F76F012A818F4F82EADCF52519B8CE
          1F8730320C50634362E3D0D3D1097D8F8500D949626E76263C36328AC381B007
          9D01917DBB16EA0E73E0ECD8BF155C981AC11A0D5E1AFBA1EF3633F622572BEA
          12E3A15470101C7628EF3E9E8BB8371F50AA00B70BAAB62EF9CE7D70277802B8
          67BD30593F22DF30C4D8556DECD9B4A8889AD48438A8143C04B773CE614121E4
          079EFE5F202FCCC876E695A17079050C583FA0CF36555D39F4E982E4C4A85A6D
          4C79BA26E2629A36012A5508FD06B94F32A9DFCAD289BAEF72CDA0CF6CC59B89
          A93355E6B17A0A64F3CF820CC92048C6A61404AB43E7E6C8BFE895C7EE446FFF
          207AFF89A59F5D304C1284CAA9D04586D6F8A4495A04E0A804D3A4B3FA8479B4
          4E122F99463F84760CFEBFC6FC623FE02F5A2739F0E42306780000000049454E
          44AE426082}
        Anchors = [akLeft, akBottom]
      end
    end
    object tsManut: TUniTabSheet
      Hint = ''
      TabVisible = False
      Caption = 'Manuten'#231#227'o'
      object sbManut: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1071
        Height = 540
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object pgManutTitAR: TUniPageControl
          Left = 0
          Top = 0
          Width = 1069
          Height = 538
          Hint = ''
          ActivePage = tsDadosTitGeral
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object tsDadosTitGeral: TUniTabSheet
            Hint = ''
            Caption = 'T'#237'tulos a Liquidar'
            object UniScrollBox1: TUniScrollBox
              Left = 0
              Top = 0
              Width = 1061
              Height = 510
              Hint = ''
              Align = alClient
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              ScrollHeight = 33
              object dbLista: TUniDBGrid
                Left = 0
                Top = 33
                Width = 1059
                Height = 475
                Hint = ''
                TitleFont.Height = -9
                DataSource = dsTitulosAReceberLista
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
                WebOptions.PageSize = 100
                LoadMask.Message = 'Carregando Dados...'
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                Font.Height = -9
                ParentFont = False
                TabOrder = 0
                OnCellClick = dbListaCellClick
                OnFieldImage = dbListaFieldImage
                Columns = <
                  item
                    FieldName = 'FC_SELEC'
                    Title.Caption = 'Sel'
                    Title.Font.Height = -9
                    Width = 40
                    Font.Height = -9
                    CheckBoxField.AutoPost = True
                    CheckBoxField.DisplayValues = 'S;N'
                  end
                  item
                    FieldName = 'FC_IMG_EDIT'
                    Title.Caption = 'Ed'
                    Title.Font.Height = -9
                    Width = 50
                    Font.Height = -9
                    ImageOptions.Visible = True
                    ImageOptions.Width = 16
                    ImageOptions.Height = 16
                  end
                  item
                    FieldName = 'codTituloAReceber'
                    Title.Caption = 'T'#237'tulo'
                    Title.Font.Height = -9
                    Width = 78
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'codEmitente'
                    Title.Caption = 'Cliente'
                    Title.Font.Height = -9
                    Width = 84
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'nomeEmitente'
                    Title.Caption = 'Nome Cliente'
                    Title.Font.Height = -9
                    Width = 200
                    Font.Height = -9
                    ReadOnly = True
                  end
                  item
                    FieldName = 'valorOriginal'
                    Title.Caption = 'Valor Original'
                    Title.Font.Height = -9
                    Width = 100
                    Font.Height = -9
                  end
                  item
                    FieldName = 'FC_VL_JUROS'
                    Title.Caption = 'Valor Juros'
                    Title.Font.Height = -9
                    Width = 77
                    Font.Height = -9
                  end
                  item
                    FieldName = 'FC_VL_MULTA'
                    Title.Caption = 'Valor Multa'
                    Title.Font.Height = -9
                    Width = 85
                    Font.Height = -9
                  end
                  item
                    FieldName = 'FC_VL_DESCTO'
                    Title.Caption = 'Valor Desconto'
                    Title.Font.Height = -9
                    Width = 106
                    Font.Height = -9
                  end
                  item
                    FieldName = 'FC_VL_TOTAL'
                    Title.Caption = 'Valor Total'
                    Title.Font.Height = -9
                    Width = 96
                    Font.Height = -9
                  end
                  item
                    FieldName = 'percJuroDia'
                    Title.Caption = '% Juros'
                    Title.Font.Height = -9
                    Width = 70
                    Font.Height = -9
                  end
                  item
                    FieldName = 'percDesctoAntecip'
                    Title.Caption = '% Desconto'
                    Title.Font.Height = -9
                    Width = 100
                    Font.Height = -9
                  end
                  item
                    FieldName = 'percMultaAtraso'
                    Title.Caption = '% Multa'
                    Title.Font.Height = -9
                    Width = 100
                    Font.Height = -9
                  end
                  item
                    FieldName = 'parcela'
                    Title.Caption = 'Parcela'
                    Title.Font.Height = -9
                    Width = 76
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'descricao'
                    Title.Caption = 'Descri'#231#227'o'
                    Title.Font.Height = -9
                    Width = 184
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'dtVencimento'
                    Title.Caption = 'Dt Vencimento'
                    Title.Font.Height = -9
                    Width = 125
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'dtEmissao'
                    Title.Caption = 'Dt Emiss'#227'o'
                    Title.Font.Height = -9
                    Width = 104
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'nomePortador'
                    Title.Caption = 'Portador'
                    Title.Font.Height = -9
                    Width = 172
                    Font.Height = -9
                    ReadOnly = True
                  end
                  item
                    FieldName = 'doctoReferencia'
                    Title.Caption = 'Docto Refer'
                    Title.Font.Height = -9
                    Width = 163
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'codOrdemServico'
                    Title.Caption = 'Ordem Servi'#231'o'
                    Title.Font.Height = -9
                    Width = 141
                    Font.Height = -9
                    Sortable = True
                  end
                  item
                    FieldName = 'nomeFormaPagto'
                    Title.Caption = 'Forma Pagto'
                    Title.Font.Height = -9
                    Width = 165
                    Font.Height = -9
                    ReadOnly = True
                  end>
              end
              object UniToolBar3: TUniToolBar
                Left = 0
                Top = 0
                Width = 1059
                Height = 33
                Hint = ''
                Images = UniNativeImageList1
                Anchors = [akLeft, akTop, akRight]
                Align = alTop
                TabOrder = 1
                ParentColor = False
                Color = clBtnFace
                object UniToolButton1: TUniToolButton
                  Left = 133
                  Top = 0
                  Width = 8
                  Hint = ''
                  Style = tbsSeparator
                  Caption = 'UniToolButton4'
                  TabOrder = 2
                end
                object UniToolButton2: TUniToolButton
                  Left = 274
                  Top = 0
                  Width = 8
                  Hint = ''
                  Style = tbsSeparator
                  Caption = 'UniToolButton2'
                  TabOrder = 4
                end
                object UniBitBtn1: TUniBitBtn
                  Left = 141
                  Top = 0
                  Width = 133
                  Height = 33
                  Hint = ''
                  Caption = 'CANCELAR'
                  Align = alLeft
                  Anchors = [akLeft, akTop, akBottom]
                  TabOrder = 1
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Atualizando Dados...Aguarde!'
                  Images = UniNativeImageList1
                  ImageIndex = 13
                  OnClick = UniBitBtn1Click
                end
                object btEfetivar: TUniBitBtn
                  Left = 0
                  Top = 0
                  Width = 133
                  Height = 33
                  Hint = ''
                  Caption = 'EFETIVAR'
                  Align = alLeft
                  Anchors = [akLeft, akTop, akBottom]
                  TabOrder = 3
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Atualizando Dados...Aguarde!'
                  Images = UniNativeImageList1
                  ImageIndex = 12
                  OnClick = btEfetivarClick
                  ExplicitLeft = 1
                  ExplicitTop = -6
                end
                object btMarcaTdsTitLiq: TUniBitBtn
                  Left = 282
                  Top = 0
                  Width = 42
                  Height = 33
                  Hint = ''
                  Caption = ''
                  Align = alLeft
                  Anchors = [akLeft, akTop, akBottom]
                  TabOrder = 5
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Atualizando...'
                  Images = UniNativeImageList1
                  ImageIndex = 16
                  OnClick = btMarcaTdsTitLiqClick
                end
                object btDesmarcaTdsTitLiq: TUniBitBtn
                  Left = 324
                  Top = 0
                  Width = 42
                  Height = 33
                  Hint = ''
                  Caption = ''
                  Align = alLeft
                  Anchors = [akLeft, akTop, akBottom]
                  TabOrder = 6
                  ScreenMask.Enabled = True
                  ScreenMask.Message = 'Atualizando...'
                  Images = UniNativeImageList1
                  ImageIndex = 15
                  OnClick = btDesmarcaTdsTitLiqClick
                end
              end
            end
          end
          object tsManutTitAR: TUniTabSheet
            Hint = ''
            TabVisible = False
            Caption = 'Manuten'#231#227'o T'#237'tulo AR'
            object UniLabel10: TUniLabel
              Left = 20
              Top = 53
              Width = 66
              Height = 13
              Hint = ''
              Caption = 'C'#243'digo T'#237'tulo:'
              TabOrder = 0
            end
            object edtCod: TUniDBEdit
              Left = 20
              Top = 72
              Width = 151
              Height = 22
              Hint = ''
              DataField = 'codTituloAReceber'
              DataSource = dsTitulosAReceberLista
              CharCase = ecUpperCase
              TabOrder = 1
              TabStop = False
              ReadOnly = True
            end
            object UniLabel9: TUniLabel
              Left = 177
              Top = 53
              Width = 50
              Height = 13
              Hint = ''
              Caption = 'Descri'#231#227'o:'
              TabOrder = 2
            end
            object edtNome: TUniDBEdit
              Left = 177
              Top = 72
              Width = 512
              Height = 22
              Hint = ''
              DataField = 'descricao'
              DataSource = dsTitulosAReceberLista
              CharCase = ecUpperCase
              TabOrder = 3
              TabStop = False
              ReadOnly = True
            end
            object UniToolBar2: TUniToolBar
              Left = 0
              Top = 0
              Width = 1061
              Height = 29
              Hint = ''
              Images = UniNativeImageList1
              Anchors = [akLeft, akTop, akRight]
              Align = alTop
              TabOrder = 4
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
                ExplicitLeft = 2
                ExplicitTop = -1
              end
            end
            object UniLabel21: TUniLabel
              Left = 20
              Top = 165
              Width = 44
              Height = 13
              Hint = ''
              Caption = '% Multa:'
              TabOrder = 5
            end
            object edtPercMulta: TUniDBFormattedNumberEdit
              Left = 21
              Top = 183
              Width = 121
              Height = 22
              Hint = ''
              DataField = 'percMultaAtraso'
              DataSource = dsTitulosAReceberLista
              TabOrder = 6
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtPercMultaExit
            end
            object UniLabel22: TUniLabel
              Left = 20
              Top = 213
              Width = 44
              Height = 13
              Hint = ''
              Caption = '% Juros:'
              TabOrder = 7
            end
            object edtPercJuros: TUniDBFormattedNumberEdit
              Left = 21
              Top = 232
              Width = 121
              Height = 22
              Hint = ''
              DataField = 'percJuroDia'
              DataSource = dsTitulosAReceberLista
              TabOrder = 8
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtPercJurosExit
            end
            object UniLabel23: TUniLabel
              Left = 20
              Top = 261
              Width = 63
              Height = 13
              Hint = ''
              Caption = '% Desconto:'
              TabOrder = 9
            end
            object edtPercDescto: TUniDBFormattedNumberEdit
              Left = 21
              Top = 280
              Width = 121
              Height = 22
              Hint = ''
              DataField = 'percDesctoAntecip'
              DataSource = dsTitulosAReceberLista
              TabOrder = 10
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtPercDesctoExit
            end
            object UniLabel3: TUniLabel
              Left = 177
              Top = 165
              Width = 57
              Height = 13
              Hint = ''
              Caption = 'Valor Multa:'
              TabOrder = 11
            end
            object edtVlMulta: TUniDBFormattedNumberEdit
              Left = 177
              Top = 183
              Width = 121
              Height = 22
              Hint = ''
              Enabled = False
              DataField = 'FC_VL_MULTA'
              DataSource = dsTitulosAReceberLista
              TabOrder = 12
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtVlMultaExit
            end
            object UniLabel4: TUniLabel
              Left = 177
              Top = 213
              Width = 57
              Height = 13
              Hint = ''
              Caption = 'Valor Juros:'
              TabOrder = 13
            end
            object edtVlJuros: TUniDBFormattedNumberEdit
              Left = 177
              Top = 233
              Width = 121
              Height = 22
              Hint = ''
              Enabled = False
              DataField = 'FC_VL_JUROS'
              DataSource = dsTitulosAReceberLista
              TabOrder = 14
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtVlJurosExit
            end
            object UniLabel6: TUniLabel
              Left = 177
              Top = 261
              Width = 76
              Height = 13
              Hint = ''
              Caption = 'Valor Desconto:'
              TabOrder = 15
            end
            object edtVlDescto: TUniDBFormattedNumberEdit
              Left = 177
              Top = 280
              Width = 121
              Height = 22
              Hint = ''
              Enabled = False
              DataField = 'FC_VL_DESCTO'
              DataSource = dsTitulosAReceberLista
              TabOrder = 16
              DecimalSeparator = ','
              ThousandSeparator = '.'
              OnExit = edtVlDesctoExit
            end
            object UniLabel7: TUniLabel
              Left = 20
              Top = 324
              Width = 57
              Height = 13
              Hint = ''
              Caption = 'Valor T'#237'tulo:'
              TabOrder = 17
            end
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 21
              Top = 343
              Width = 121
              Height = 22
              Hint = ''
              DataField = 'FC_VL_TOTAL'
              DataSource = dsTitulosAReceberLista
              TabOrder = 18
              TabStop = False
              ReadOnly = True
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniLabel8: TUniLabel
              Left = 21
              Top = 107
              Width = 67
              Height = 13
              Hint = ''
              Caption = 'Valor Original:'
              TabOrder = 19
            end
            object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
              Left = 21
              Top = 126
              Width = 121
              Height = 22
              Hint = ''
              DataField = 'valorTituloReceber'
              DataSource = dsTitulosAReceberLista
              TabOrder = 20
              TabStop = False
              ReadOnly = True
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object rgMulta: TUniDBRadioGroup
              Left = 317
              Top = 165
              Width = 220
              Height = 40
              Hint = ''
              DataField = 'FC_IND_MULTA'
              DataSource = dsTitulosAReceberLista
              Caption = 'Multa'
              TabOrder = 21
              Items.Strings = (
                'Percentual'
                'Valor')
              Columns = 2
              Values.Strings = (
                '1'
                '2')
              OnClick = rgMultaClick
            end
            object rgJuros: TUniDBRadioGroup
              Left = 317
              Top = 213
              Width = 220
              Height = 42
              Hint = ''
              DataField = 'FC_IND_JUROS'
              DataSource = dsTitulosAReceberLista
              Caption = 'Juros'
              TabOrder = 22
              Items.Strings = (
                'Percentual'
                'Valor')
              Columns = 2
              Values.Strings = (
                '1'
                '2')
              OnClick = rgJurosClick
            end
            object rgDesconto: TUniDBRadioGroup
              Left = 317
              Top = 261
              Width = 220
              Height = 41
              Hint = ''
              DataField = 'FC_IND_DESCONTO'
              DataSource = dsTitulosAReceberLista
              Caption = 'Desconto'
              TabOrder = 23
              Items.Strings = (
                'Percentual'
                'Valor')
              Columns = 2
              Values.Strings = (
                '1'
                '2')
              OnClick = rgDescontoClick
            end
          end
        end
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 888
    Top = 136
    Images = {
      11000000FFFFFF1F046106000089504E470D0A1A0A0000000D49484452000000
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
      020C0085BC110A618F79F20000000049454E44AE426082FFFFFF1F0438020000
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C000001DA4944415478DA9C53BF4F5351183DF7BEFB4AAB068A9B
      2B0C18FF050796420289AB101227063706DD0069088CAC6CA871208190624204
      422C18C0C19105A50CCE4222D4849F7D7DEFF3FBEEFBD136EDD42FF99273CF7B
      E7DE73EE0FF5647EE7F2BAE267BD00080850906210A15658F1D0D5C0C3945336
      22FE373B8476AA2BBF9D359E2C2BF57D00D02E2F10207FB984D9C7E396CE5FBC
      6FC4DD8C03B6FBFC2B44AB32539B74333F8C771BBFA11D0786AD199EC4A7D0B6
      A3A8017B8182E707987BD18307D35B30612E602CD7032DD91CA0B07B82D1DC53
      CB17764B181BE8B378AD58C2CB5C1FBC2A923D3131ECE0E6C52D61F8434A5664
      E211A7EA8AFE129C614EABDA3E241314F68E59A0E0B0CAE51CEBDF4E90E6AD9E
      F858C29B4FA7F69FAA64E623B8BAABE2EDF0B350989EFA42527F2A44671ED1DF
      806871E7179599638AD2AF36E8F3D1B96DC177CC9D57AD84449B3870236B469A
      B18BB0896A76054BB4946E1161B5786CED1989E028ACEC8511E4A846167E2411
      960F4E71CD115E0FC61126C308F751FBDC1F8A3F29AE95C35213AE4463D1EAD8
      A105D155AE738DDB8ADF8475DDC536F1919886A3A94DA1A9193BF158349D335B
      D46E89D664BCAB7D7E14FD723D93D7589FA305B6AF91375BB442F57267D15E95
      FF0B3000E9F93CA9DCD143290000000049454E44AE426082FFFFFF1F04740200
      0089504E470D0A1A0A0000000D49484452000000100000001008060000001FF3
      FF610000001974455874536F6674776172650041646F626520496D6167655265
      61647971C9653C000002164944415478DA9C533D68145110FEDECF6E7267E161
      2104444111C2590A825828C48B7F58D8587898C62260A596A28403111B89AD21
      687B29AE4888885CFC8360110862717A601B0B8598F3504FDDDBF79C997BB767
      509B0CCCEEECEC373FDFCC7B6AE4D6938D6FBFD242E200E701051632C8528A9F
      5EDEE225B7633FD99106B6C5A66539F84BE514B622DBA71E176CC26559964B80
      8EA8A4C3D4C62C2A3B2E5119053D7D05399B0AA4D3357057EF013FE8FB481D1C
      6B11E26F7EBE0F6D0C2CB536AC13DC6ECD2037A4918F1A387370A7601EADAEE3
      2EF9DB9D2E2A81A945C870E1F85E68221719A0F6B489F3A551AA0CDC78F80627
      0FED11CCE2CA4794C77653823E09EE20C81029151707B715D33B168827BF0F70
      2FB8580DE69025A83D6BC0500BC66844C4A3F6BC897C6C6403ABCD0F8261BBF6
      E23DDADF135C3B5DEC250823C0C4890302B044A15A6FA23C3E8A3CF92FCFBEC3
      E1E22EC1CCD4D770F1D87EB45364CBCE3AE0BDF20C2C2BD9117ACA209E4B3F40
      A8E97F50985B6A50078A3A200A46A14A14E8A050528595C69A60D8AE2E13854E
      82C9528F0286AF2F7A969F4153D2074B6F7D5F6C79DE2FBCFE24CA364B37FCE3
      D86C065A8E696F50FE8FD3E6E8FCC6566536C2B6B219E8B012BB69358314AEEB
      70F6CEABCC966DF48BF2BC22A3FF3AE31363C5CCF673E7FE7B1738D6E692AF2F
      E9521C4D5237B88DA184124A6AD36DF4810607732CFFDA475AC0D6A4F55B8001
      001D5CD669EC168E3A0000000049454E44AE426082}
  end
  object fdFormaPagto: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcFormaPagamento')
    Left = 796
    Top = 293
    object fdFormaPagtocodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdFormaPagtocodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdFormaPagtocodFormaPagto: TIntegerField
      FieldName = 'codFormaPagto'
      Origin = 'codFormaPagto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdFormaPagtoFC_SELEC: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FC_SELEC'
    end
    object fdFormaPagtonomeFormaPagto: TStringField
      FieldName = 'nomeFormaPagto'
      Origin = 'nomeFormaPagto'
      Required = True
      Size = 50
    end
  end
  object dsFormaPagto: TDataSource
    DataSet = fdFormaPagto
    Left = 868
    Top = 293
  end
  object fdEmitente: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcEmitente')
    Left = 580
    Top = 240
    object fdEmitentecodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
    end
    object fdEmitentecodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
    end
    object fdEmitentecodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
    end
    object fdEmitentenomeEmitente: TStringField
      FieldName = 'nomeEmitente'
      Origin = 'nomeEmitente'
      Size = 100
    end
    object fdEmitentecgc: TStringField
      FieldName = 'cgc'
      Origin = 'cgc'
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
    object fdEmitenteFC_SELEC: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FC_SELEC'
    end
  end
  object dsEmitente: TDataSource
    DataSet = fdEmitente
    Left = 660
    Top = 264
  end
  object fdPortador: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcPortador')
    Left = 604
    Top = 411
    object fdPortadorcodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadorcodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadorcodPortador: TIntegerField
      FieldName = 'codPortador'
      Origin = 'codPortador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadornomePortador: TStringField
      FieldName = 'nomePortador'
      Origin = 'nomePortador'
      Required = True
      Size = 50
    end
    object fdPortadorcodBanco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codBanco'
      Origin = 'codBanco'
    end
    object fdPortadoragencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object fdPortadorcontaCorrente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contaCorrente'
      Origin = 'contaCorrente'
    end
    object fdPortadortipoPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipoPortador'
      Origin = 'tipoPortador'
    end
    object fdPortadorvlSaldoInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoInicial'
      Origin = 'vlSaldoInicial'
      Precision = 15
      Size = 2
    end
    object fdPortadorvlSaldoAtual: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoAtual'
      Origin = 'vlSaldoAtual'
      Precision = 15
      Size = 2
    end
    object fdPortadorFC_SELEC: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FC_SELEC'
    end
    object fdPortadorpercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdPortadorpercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdPortadorpercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
  end
  object dsPortador: TDataSource
    DataSet = fdPortador
    Left = 692
    Top = 411
  end
  object fdTitulosAReceberLista: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codOrdemServico'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select gcTitulosAReceber.*,'
      'gcEmitente.nomeEmitente,'
      'gcFormaPagamento.nomeFormaPagto,'
      'gcPortador.nomePortador'
      'from gcTitulosAReceber'
      'inner join gcEmitente on '
      '(gcEmitente.codEmpresa = gcTitulosAReceber.codEmpresa '
      'and '#10'gcEmitente.codEstabel = gcTitulosAReceber.codEstabel and '
      'gcEmitente.codEmitente = gcTitulosAReceber.codEmitente) '
      'left outer join gcFormaPagamento on '
      '(gcFormaPagamento.codEmpresa = gcTitulosAReceber.codEmpresa and '
      'gcFormaPagamento.codEstabel = gcTitulosAReceber.codEstabel and '
      
        'gcFormaPagamento.codFormaPagto = gcTitulosAReceber.codFormaPagto' +
        ')'
      'inner join gcPortador on '
      '(gcPortador.codEmpresa = gcTitulosAReceber.codEmpresa and '
      'gcPortador.codEstabel = gcTitulosAReceber.codEstabel and '
      'gcPortador.codPortador = gcTitulosAReceber.codPortador) ')
    Left = 812
    Top = 224
    object fdTitulosAReceberListacodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAReceberListacodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAReceberListacodTituloAReceber: TIntegerField
      FieldName = 'codTituloAReceber'
      Origin = 'codTituloAReceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAReceberListadescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object fdTitulosAReceberListacodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      Required = True
    end
    object fdTitulosAReceberListacodFormaPagto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codFormaPagto'
      Origin = 'codFormaPagto'
    end
    object fdTitulosAReceberListasituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object fdTitulosAReceberListadtVencimento: TDateField
      FieldName = 'dtVencimento'
      Origin = 'dtVencimento'
      Required = True
    end
    object fdTitulosAReceberListadtEmissao: TDateField
      FieldName = 'dtEmissao'
      Origin = 'dtEmissao'
      Required = True
    end
    object fdTitulosAReceberListadtTransacao: TDateField
      FieldName = 'dtTransacao'
      Origin = 'dtTransacao'
      Required = True
    end
    object fdTitulosAReceberListacodUsuarImplant: TStringField
      FieldName = 'codUsuarImplant'
      Origin = 'codUsuarImplant'
      Required = True
    end
    object fdTitulosAReceberListaobservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 500
    end
    object fdTitulosAReceberListavalorOriginal: TBCDField
      FieldName = 'valorOriginal'
      Origin = 'valorOriginal'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListavalorTituloReceber: TBCDField
      FieldName = 'valorTituloReceber'
      Origin = 'valorTituloReceber'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListavalorDesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorDesconto'
      Origin = 'valorDesconto'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListavalorJuros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorJuros'
      Origin = 'valorJuros'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListavalorMulta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorMulta'
      Origin = 'valorMulta'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListacodPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codPortador'
      Origin = 'codPortador'
    end
    object fdTitulosAReceberListadoctoReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doctoReferencia'
      Origin = 'doctoReferencia'
      Size = 100
    end
    object fdTitulosAReceberListaindOrigem: TIntegerField
      FieldName = 'indOrigem'
      Origin = 'indOrigem'
      Required = True
    end
    object fdTitulosAReceberListacodOrdemServico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codOrdemServico'
      Origin = 'codOrdemServico'
    end
    object fdTitulosAReceberListacodUsuarLiquid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarLiquid'
      Origin = 'codUsuarLiquid'
    end
    object fdTitulosAReceberListadtCancelamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtCancelamento'
      Origin = 'dtCancelamento'
    end
    object fdTitulosAReceberListadtLiquidacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtLiquidacao'
      Origin = 'dtLiquidacao'
    end
    object fdTitulosAReceberListaFC_SELEC: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FC_SELEC'
    end
    object fdTitulosAReceberListacodUsuarCancela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarCancela'
      Origin = 'codUsuarCancela'
    end
    object fdTitulosAReceberListaFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdTitulosAReceberListaparcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parcela'
      Origin = 'parcela'
    end
    object fdTitulosAReceberListapercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListapercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListapercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberListamotivoCancela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivoCancela'
      Origin = 'motivoCancela'
      Size = 500
    end
    object fdTitulosAReceberListanomeEmitente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeEmitente'
      Origin = 'nomeEmitente'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object fdTitulosAReceberListanomeFormaPagto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeFormaPagto'
      Origin = 'nomeFormaPagto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdTitulosAReceberListanomePortador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomePortador'
      Origin = 'nomePortador'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdTitulosAReceberListaFC_VL_JUROS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FC_VL_JUROS'
    end
    object fdTitulosAReceberListaFC_VL_MULTA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FC_VL_MULTA'
    end
    object fdTitulosAReceberListaFC_VL_DESCTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FC_VL_DESCTO'
    end
    object fdTitulosAReceberListaFC_VL_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'FC_VL_TOTAL'
    end
    object fdTitulosAReceberListaFC_IND_MULTA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IND_MULTA'
    end
    object fdTitulosAReceberListaFC_IND_JUROS: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IND_JUROS'
    end
    object fdTitulosAReceberListaFC_IND_DESCONTO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IND_DESCONTO'
    end
  end
  object dsTitulosAReceberLista: TDataSource
    DataSet = fdTitulosAReceberLista
    Left = 932
    Top = 232
  end
  object fdTitulosMovtoAReceber: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcTitulosMovtoAReceber')
    Left = 840
    Top = 357
    object fdTitulosMovtoARecebercodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebercodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebercodTituloAReceber: TIntegerField
      FieldName = 'codTituloAReceber'
      Origin = 'codTituloAReceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebersequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebertipoMovto: TIntegerField
      FieldName = 'tipoMovto'
      Origin = 'tipoMovto'
      Required = True
    end
    object fdTitulosMovtoAReceberdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 200
    end
    object fdTitulosMovtoAReceberdtMovto: TDateField
      FieldName = 'dtMovto'
      Origin = 'dtMovto'
      Required = True
    end
    object fdTitulosMovtoARecebercodUsuarMovto: TStringField
      FieldName = 'codUsuarMovto'
      Origin = 'codUsuarMovto'
      Required = True
    end
    object fdTitulosMovtoARecebervalorMovto: TBCDField
      FieldName = 'valorMovto'
      Origin = 'valorMovto'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosMovtoAReceberdescHistorico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descHistorico'
      Origin = 'descHistorico'
      Size = 500
    end
  end
  object dsTitulosMovtoAReceber: TDataSource
    DataSet = fdTitulosMovtoAReceber
    Left = 836
    Top = 424
  end
  object fqAuxiliar: TFDQuery
    Connection = UniMainModule.conexaoDB
    Left = 804
    Top = 153
  end
  object fdPortadLiq: TFDQuery
    Connection = UniMainModule.conexaoDB
    SQL.Strings = (
      'select * from gcPortador')
    Left = 492
    Top = 403
    object fdPortadLiqcodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadLiqcodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadLiqcodPortador: TIntegerField
      FieldName = 'codPortador'
      Origin = 'codPortador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadLiqnomePortador: TStringField
      FieldName = 'nomePortador'
      Origin = 'nomePortador'
      Required = True
      Size = 50
    end
    object fdPortadLiqcodBanco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codBanco'
      Origin = 'codBanco'
    end
    object fdPortadLiqagencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object fdPortadLiqcontaCorrente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contaCorrente'
      Origin = 'contaCorrente'
    end
    object fdPortadLiqtipoPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipoPortador'
      Origin = 'tipoPortador'
    end
    object fdPortadLiqvlSaldoInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoInicial'
      Origin = 'vlSaldoInicial'
      Precision = 15
      Size = 2
    end
    object fdPortadLiqvlSaldoAtual: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoAtual'
      Origin = 'vlSaldoAtual'
      Precision = 15
      Size = 2
    end
    object fdPortadLiqpercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdPortadLiqpercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdPortadLiqpercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
  end
end
