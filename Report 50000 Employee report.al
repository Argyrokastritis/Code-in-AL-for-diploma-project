report 50000 "Employee report"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Employee report.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    dataset
    {
        dataitem("Main Insurance"; "Main Insurance")
        {

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
            //Info of Insurance CPT's
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


    var
        UserComment: Text;
        //global variables definitions

        //CAPTION NAMES all TextConst as it's strings

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

