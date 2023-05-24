report 50000 "Employee insurances report"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Employee insurances report.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    dataset
    {
        dataitem("Main Insurance"; "Main Insurance")
        {
            //Info of company
            column(CompanyPic; CompanyInfo.Picture)
            {
            }
            column(CompanyName; CompanyInfo.Name)
            {
            }
            column(CompanyPostCode; CompanyInfo."Post Code")
            {
            }
            column(CompanyCity; CompanyInfo.City)
            {
            }
            column(CompanyAddress; CompanyInfo.Address)
            {
            }
            column(CompanyPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyFax; CompanyInfo."Fax No.")
            {
            }
            column(CompanyVatRegNo; CompanyInfo."VAT Registration No.")
            {
            }
            column(Doy_Cpt; DoyCpt)
            {
            }
            column(DocType_Cpt; DocTypeCpt)
            {
            }
            column(Series_Cpt; SeriesCpt)
            {
            }
            column(No_Cpt; NoCpt)
            {
            }
            column(Date_Cpt; DateCpt)
            {
            }
            column(Stoixeia_Cpt; StoixeiaCpt)
            {
            }
            column(Code_Cpt; CodeCpt)
            {
            }
            column(Name_Cpt; NameCpt)
            {
            }
            column(Profession_Cpt; ProfessionCpt)
            {
            }
            column(OdosArith_Cpt; OdosArithCpt)
            {
            }
            column(City_Cpt; CityCpt)
            {
            }
            column(PostCode_Cpt; PostCodeCpt)
            {
            }
            column(Vat_Cpt; VatCpt)
            {
            }
            column(SxetikaParas_Cpt; SxetikaParasCpt)
            {
            }
            column(ArithmosEggraf_Cpt; ArithmosEggrafCpt)
            {
            }
            column(SkoposDiak_Cpt; SkoposDiakCpt)
            {
            }
            column(Location_Cpt; LocationCpt)
            {
            }
            column(Destination_Cpt; DestinationCpt)
            {
            }
            column(TroposPlir_Cpt; TroposPlirCpt)
            {
            }
            column(Desc_Cpt; DescCpt)
            {
            }
            column(MonMetr_Cpt; MonMetrCpt)
            {
            }
            column(Qty_Cpt; QtyCpt)
            {
            }
            column(UnitPrice_Cpt; UnitPriceCpt)
            {
            }
            column(AksiaproEkpt_Cpt; AksiaproEkptCpt)
            {
            }
            column(Ekpt_Cpt; EkptCpt)
            {
            }
            column(EkptPoso_Cpt; EkptPosoCpt)
            {
            }
            column(AksiametaEkpt_Cpt; AksiametaEkptCpt)
            {
            }
            column(Fpa_Cpt; FpaCpt)
            {
            }
            column(ValueFpa_Cpt; ValueFpaCpt)
            {
            }
            column(AnalysiFpa_Cpt; AnalysiFpaCpt)
            {
            }
            column(ProhgYpol_Cpt; ProhgYpolCpt)
            {
            }
            column(NeoYpol_Cpt; NeoYpolCpt)
            {
            }
            column(KatharoPosoanaFpa_Cpt; KatharoPosoanaFpaCpt)
            {
            }
            column(PosoFpa_Cpt; PosoFpaCpt)
            {
            }
            column(TelikiAksia_Cpt; TelikiAksiaCpt)
            {
            }
            column(Ekdosi_Cpt; EkdosiCpt)
            {
            }
            column(Paradosi_Cpt; ParadosiCpt)
            {
            }
            column(Paralavi_Cpt; ParalaviCpt)
            {
            }
            column(Sxolio_Cpt; SxolioCpt)
            {
            }
            column(Atheorita_Cpt; AtheoritaCpt)
            {
            }
            column(Amp_Cpt; AmpCpt)
            {
            }
            column(SynolikiPosotita_Cpt; SynolikiPosotitaCpt)
            {
            }
            column(GrandTotal_Cpt; GrandTotalCpt)
            {
            }
            column(Epivarinseis_Cpt; EpivarinseisCpt)
            {
            }
            column(Paratiriseis_Cpt; ParatiriseisCpt)
            {
            }
            column(Pistopoihsh_Cpt; PistopoihshCpt)
            {
            }
            //column(CompanyTaxOffice; CompanyInfo."Tax Office RCGRBASE") { }
            column(CompanyContactPerson; CompanyInfo."Contact Person")
            {
            }

            column(CustomerName; Customer.Name)
            {
            }

            column(CustomerAddress; Customer.Address)
            {
            }
            column(CustomerCity; Customer.City)
            {
            }
            column(CustomerPostCode; Customer."Post Code")
            {
            }
            column(CustomerVat; Customer."VAT Registration No.") { }

            //Info of Insurance
            column(No; "No.") { }
            column(type; "type") { IncludeCaption = true; }
            column(Insured_Name; "Insured Name") { IncludeCaption = true; }
            column(Insured_No; "Insured No.") { IncludeCaption = true; }
            column(Insurance_Date; "Insurance Date") { IncludeCaption = true; }
            column(Insured_To; "Insured To") { }
            column(Handler_no; "Handler no.") { }
            column(Fee; "Fee") { }
            column(Amount; "Amount") { }
            column(Current_Claims_Amount; "Current Claims Amount") { }
            column(Max_Benefits_Limit; "Max Benefits Limit") { }
            column(State_of_Insurance; "State of Insurance") { }
            //column(Comment; Comments_Of_insurance.Comment) { }

            //Info of Insurance CPT's
            column(Thl_Cpt; Thl_Cpt) { }
            column(Fax_Cpt; Fax_Cpt) { }
            column(Insurance_NoCPT; "Insurance_NoCPT") { }
            column(Insurance_typeCPT; "Insurance_typeCPT") { }
            column(Insured_NameCPT; "Insured_NameCPT") { }
            column(Insured_NoCPT; "Insured_NoCPT") { }
            column(Insurance_DateCPT; "Insurance_DateCPT") { }
            column(Insured_ToCPT; "Insured_ToCPT") { }
            column(Handler_noCPT; "Handler_noCPT") { }
            column(FeeCPT; "FeeCPT") { }
            column(AmountCPT; "AmountCPT") { }
            column(Current_Claims_AmountCPT; "Current_Claims_AmountCPT") { }
            column(Max_Benefits_LimitCPT; "Max_Benefits_LimitCPT") { }
            column(State_of_InsuranceCPT; "State_of_InsuranceCPT") { }
            column(UserComment; "UserComment") { }

            dataitem("Comments of insurance"; "Comments of insurance")
            {
                DataItemLink = "Insurance No." = FIELD("No.");
                DataItemTableView = SORTING("Insurance No.", "Comment no.");
                //PrintOnlyIfDetail = true;

                column(Insurance_No; "Insurance No.") { }
                column(Comment_no; "Comment no.") { }

                column(Comment; Comment) { }

            }
            trigger OnAfterGetRecord()
            begin
                //finds the corresponding row means the customer
                if Customer.Get("Main Insurance"."Insured No.") then begin


                    //Discount for proffesors
                    if Customer."insured job titles" = Customer."insured job titles"::"University Professor" then begin

                        Fee := Fee - 0.24 * Fee;
                        Amount := Amount - 0.24 * Amount;


                        //10% Discount for Attitude
                        if Customer."Insured attitude" = Customer."Insured attitude"::"Very good attitude" then begin
                            Fee := Fee - 0.1 * Fee;
                            Amount := Amount - 0.1 * Amount;
                            //Message('%1', Fee);
                        end;
                    end;

                    //Discount for High School teachers 
                    if Customer."insured job titles" = Customer."insured job titles"::"High School Teacher" then begin
                        Fee := Fee - 0.15 * Fee;
                        Amount := Amount - 0.15 * Amount;
                        //Message('%1', Fee);

                        //10% Discount for Attitude
                        if Customer."Insured attitude" = Customer."Insured attitude"::"Very good attitude" then begin
                            Fee := Fee - 0.1 * Fee;
                            Amount := Amount - 0.1 * Amount;
                        end;
                    end;
                end;
            end;
        }

    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(UserComment; UserComment)
                    {

                        ApplicationArea = Basic;
                        Caption = 'User Comment';


                    }
                }
            }
        }
    }

    labels
    {
        ReportTitle = 'Show Student and apoysia info';
    }
    trigger OnInitReport()
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
    end;


    var
        CompanyInfo: record "Company Information";
        Customer: Record Customer;
        Comments_Of_insurance: Record "Comments of insurance";
        //SeriesDescription: Record SeriesDescription;
        UserComment: Text;
        //global variables definitions

        //CAPTION NAMES all TextConst as it's strings
        Thl_CPT: TextConst ENU = 'Phone number', ENG = 'ΤΗΛΕΦΩΝΟ ΠΕΛΑΤΗ';
        Fax_CPT: TextConst ENU = 'Fax code', ENG = 'ΦΑΞ ΠΕΛΑΤΗ';
        DoyCpt: TextConst ENU = 'TAX:', ENG = 'ΔΟΥ:';
        DocTypeCpt: TextConst ENU = 'DOCUMENT TYPE', ENG = 'ΤΥΠΟΣ ΠΑΡΑΣΤΑΤΙΚΟΥ';
        SeriesCpt: TextConst ENU = 'SEIRIES NO.', ENG = 'ΣΕΙΡΑ';
        NoCpt: TextConst ENU = 'NO.', ENG = 'ΑΡΙΘΜΟΣ';
        DateCpt: TextConst ENU = 'DATE', ENG = 'ΗΜΕΡΟΜΗΝΙΑ';
        StoixeiaCpt: TextConst ENU = 'ΣΤΟΙΧΕΙΑ ΑΝΤΙΣΥΜΒΑΛΛΟΜΕΝΟΥ', ENG = 'ΣΤΟΙΧΕΙΑ ΑΝΤΙΣΥΜΒΑΛΛΟΜΕΝΟΥ';
        CodeCpt: TextConst ENU = 'CODE', ENG = 'ΚΩΔΙΚΟΣ';
        NameCpt: TextConst ENU = 'NAME', ENG = 'ΕΠΩΝΥΜΙΑ';
        ProfessionCpt: TextConst ENU = 'PROFESSION', ENG = 'ΕΠΑΓΓΕΛΜΑ';
        OdosArithCpt: TextConst ENU = 'ADDRESS/NUM', ENG = 'ΟΔΟΣ/ΑΡ';
        CityCpt: TextConst ENU = 'CITY', ENG = 'ΠΟΛΗ';
        PostCodeCpt: TextConst ENU = 'POST CODE', ENG = 'Τ.Κ.';
        VatCpt: TextConst ENU = 'VAT REG. NO.', ENG = 'ΑΦΜ';
        SxetikaParasCpt: TextConst ENU = 'EXTERNAL DOCUMENT:', ENG = 'ΣΧΕΤΙΚΑ ΠΑΡΑΣΤΑΤΙΚΑ:';
        ArithmosEggrafCpt: TextConst ENU = 'REGISTRATION NUM:', ENG = 'ΑΡΙΘΜΟΣ ΕΓΓΡΑΦΗΣ:';
        SkoposDiakCpt: TextConst ENU = 'TRANSFER REASON:', ENG = 'ΣΚΟΠΟΣ ΔΙΑΚΙΝΗΣΗΣ:';
        LocationCpt: TextConst ENU = 'LOCATION LOAD:', ENG = 'ΤΟΠΟΣ ΦΟΡΤΩΣΗΣ:';
        DestinationCpt: TextConst ENU = 'DESTINATION PLACE:', ENG = 'ΤΟΠΟΣ ΠΡΟΟΡΙΣΜΟΥ:';
        TroposPlirCpt: TextConst ENU = 'PAYMENT METHOD:', ENG = 'ΤΡΟΠΟΣ ΠΛΗΡΩΜΗΣ:';
        DescCpt: TextConst ENU = 'DESCRIPTION', ENG = 'ΠΕΡΙΓΡΑΦΗ';
        MonMetrCpt: TextConst ENU = 'UOM', ENG = 'Μ.Μ.';
        QtyCpt: TextConst ENU = 'QUANTITY', ENG = 'ΠΟΣΟΤΗΤΑ';
        UnitPriceCpt: TextConst ENU = 'UNIT PRICE', ENG = 'ΤΙΜΗ ΜΟΝΑΔΑΣ';
        AksiaproEkptCpt: TextConst ENU = 'VALUE(BEFORE DISCOUNT)', ENG = 'ΑΞΙΑ(ΠΡΟ ΕΚΠΤΩΣΗΣ)';
        EkptCpt: TextConst ENU = 'DISCOUNT %', ENG = 'ΕΚΠΤΩΣΗ %';
        EkptPosoCpt: TextConst ENU = 'DISCOUNT AMOUNT', ENG = 'ΕΚΠΤΩΣΗ ΠΟΣΟ';
        AksiametaEkptCpt: TextConst ENU = 'VALUE(AFTER DISCOUNT)', ENG = 'ΑΞΙΑ(ΜΕΤΑ ΕΚΠΤΩΣΗΣ)';
        FpaCpt: TextConst ENU = 'VAT %', ENG = 'ΦΠΑ %';
        ValueFpaCpt: TextConst ENU = 'VALUE VAT', ENG = 'ΑΞΙΑ ΦΠΑ';
        AnalysiFpaCpt: TextConst ENU = 'VAT ANALYSIS', ENG = 'ΑΝΑΛΥΣΗ ΦΠΑ';
        ProhgYpolCpt: TextConst ENU = 'PREV. BALANCE:', ENG = 'ΠΡΟΗΓ. ΥΠΟΛΟΙΠΟ:';
        NeoYpolCpt: TextConst ENU = 'NEW BALANCE:', ENG = 'ΝΕΟ ΥΠΟΛΟΙΠΟ:';
        KatharoPosoanaFpaCpt: TextConst ENU = 'NET AMOYNT PER % VAT', ENG = 'ΚΑΘΑΡΟ ΠΟΣΟ ΑΝΑ % ΦΠΑ';
        PosoFpaCpt: TextConst ENU = 'VAT AMOUNT', ENG = 'ΠΟΣΟ ΦΠΑ';
        TelikiAksiaCpt: TextConst ENU = 'TOTAL VALUE', ENG = 'ΤΕΛΙΚΗ ΑΞΙΑ';
        EkdosiCpt: TextConst ENU = 'ΕΚΔΟΣΗ', ENG = 'ΕΚΔΟΣΗ';
        ParadosiCpt: TextConst ENU = 'DELIVERΥ', ENG = 'ΠΑΡΑΔΟΣΗ';
        ParalaviCpt: TextConst ENU = 'RECEIPT', ENG = 'ΠΑΡΑΛΑΒΗ';
        SxolioCpt: TextConst ENU = 'For any dispute exclusively competent is agreed as is the law courts of Athens', ENG = 'Για οποιαδήποτε διαφορά αποκλειστικά αρμόδια συμφωνείται όπως είναι τα δικαστήρια Αθηνών ';
        AtheoritaCpt: TextConst ENU = 'ΑΘΕΩΡΗΤΑ ΒΑΣΕΙ ΤΗΣ Α.Υ.Ο. ΠΟΛ. 1083/2003', ENG = 'ΑΘΕΩΡΗΤΑ ΒΑΣΕΙ ΤΗΣ Α.Υ.Ο. ΠΟΛ. 1083/2003';
        AmpCpt: TextConst ENU = 'ΑΜΠ: 5332', ENG = 'ΑΜΠ: 5332';
        ParatiriseisCpt: TextConst ENU = 'Comments', ENG = 'ΠΑΡΑΤΗΡΗΣΕΙΣ';
        SynolikiPosotitaCpt: TextConst ENU = 'TOTAL QUANTITY:', ENG = 'ΣΥΝΟΛΙΚΗ ΠΟΣΟΣΤΗΤΑ:';
        EpivarinseisCpt: TextConst ENU = 'CHARGES', ENG = 'ΕΠΙΒΑΡΥΝΣΕΙΣ';
        GrandTotalCpt: TextConst ENU = 'GRAND TOTAL', ENG = 'ΓΕΝΙΚΟ ΣΥΝΟΛΟ';
        PistopoihshCpt: TextConst ENU = 'ΠΙΣΤΟΠΟΙΗΣΗ: Softone Cloud Services 3523434-296F684FFDB452DCAD49C1E2D4F25A617D5C9EF47 - ', ENG = 'ΠΙΣΤΟΠΟΙΗΣΗ: Softone Cloud Services 3523434-296F684FFDB452DCAD49C1E2D4F25A617D5C9EF47 - ';

        //insurance info CPT's 
        Insurance_NoCPT: TextConst ENU = 'Insurance No.', ENG = 'ΝΟΥΜ ΑΣΦΑΛΕΙΑΣ';
        Insurance_typeCPT: TextConst ENU = 'Insurance type', ENG = 'ΤΥΠΟΣ ΑΣΦΑΛΕΙΑΣ';
        Insured_NameCPT: TextConst ENU = 'Insurance name', ENG = 'ΟΝΟΜΑ ΑΣΦΑΛΕΙΑΣ';
        Insured_NoCPT: TextConst ENU = 'Insured No', ENG = 'ΟΝΟΜΑ ΑΣΦΑΛΙΣΜΕΝΟΥ';

        Insurance_DateCPT: TextConst ENU = 'Insurance Date', ENG = 'ΗΜΕΡΟΜΗΝΙΑ ΑΣΦΑΛΙΣΗΣ';
        Insured_ToCPT: TextConst ENU = 'Insured To', ENG = '';
        Handler_noCPT: TextConst ENU = 'Handler no', ENG = 'ΑΣΦΑΛΙΣΤΗΣ ΔΙΑΧΕΙΡΙΣΗΣ';
        FeeCPT: TextConst ENU = 'Fee', ENG = 'ΠΟΣΟ';
        AmountCPT: TextConst ENU = 'Amount', ENG = 'ΣΥΝΟΛΙΚΟ ΠΟΣΟ ΩΣ ΤΩΡΑ';
        Current_Claims_AmountCPT: TextConst ENU = 'Current Claims Amount', ENG = 'ΠΟΣΑ ΕΧΕΙ ΕΙΣΠΡΑΞΕΙ';
        Max_Benefits_LimitCPT: TextConst ENU = 'Max Benefits Limit', ENG = 'ΜΕΓΙΣΤΟ ΠΟΣΟ ΑΣΦΑΛΙΣΗΣ';
        State_of_InsuranceCPT: TextConst ENU = 'State of Insurance', ENG = 'ΚΑΤΑΣΤΑΣΗ ΑΣΦΑΛΙΣΗΣ';
        UsercommentCPT: TextConst ENU = 'User comment', ENG = 'ΣΧΟΛΙΑ ΧΡΗΣΤΗ';




    trigger OnPreReport()
    begin
        //gives me the current user 
        UserId
    end;

}

