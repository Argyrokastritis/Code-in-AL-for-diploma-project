table 50000 "Main Insurance"
{

    fields
    {
        field(1; "No."; Code[30])
        {

        }
        field(10; "type"; Enum "Insurance type")
        {

        }
        field(20; "Insured Name"; Text[50]) { }
        field(40; "Insured No."; Code[20])
        {
            TableRelation = Customer."No.";
        }
        field(50; "Insurance Date"; Date) { }
        field(60; "Insured To"; Date) { }
        field(700; "Handler no."; Code[30])
        {
            TableRelation = Employee."No.";
        }
        field(80; "Fee"; Decimal) { }
        field(90; "Amount"; Decimal) { }
        field(100; "Current Claims Amount"; Decimal) { }
        field(110; "Max Benefits Limit"; Decimal) { }

        field(120; "State of Insurance"; Option)
        {
            Caption = 'State of Insurance';
            OptionMembers = Active,Fulfilled,Canceled;
        }

    }
    keys
    {
        key(PK; "No.") { }
    }


    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        noseries: record "No. Series";
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Customer Nos.");
            //NoSeriesMgt.InitSeries(SalesSetup."Customer Nos.", '', 0D, "No.", "No. Series");

        end;
    end;



}





