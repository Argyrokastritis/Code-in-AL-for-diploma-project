table 50020 "Insurance Attribute Map"
{
    fields
    {
        field(1; "Insurance No."; Code[30]) { Tablerelation = "Main Insurance"; }
        field(10; "attribute ID"; Integer) { Tablerelation = "Insurance attribute"; }
        field(20; "Attribute Name"; Text[50])
        {
            FieldClass = FlowField;
            //kanw lookup se allo pinaka
            CalcFormula = lookup("Insurance attribute".Name where(id = field("attribute ID")));
        }
        field(40; "Description"; Text[250])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Insurance attribute".Description where(id = field("attribute ID")));
        }
    }
    keys
    {
        key(PK; "Insurance No.", "attribute ID") { }
        key("attribute ID"; "attribute ID") { }
    }

    trigger OnInsert()
    var
        InsuranceAttribute: Record "Insurance Attribute";

        //The mainInsurance is the record from Insurance Card page which is the first thing you open
        MainInsurance: Record "Main insurance";

    begin

        MainInsurance.get(rec."Insurance No.");

        "InsuranceAttribute".get(rec."attribute ID");

        if (MainInsurance.type <> "InsuranceAttribute".type) then begin

            //Message('%1', "InsuranceAttribute".id);
            //Message('%1', "attribute ID");

            Error('This insurance is not acceptable give a type as the one in the card that you are in');
        end;
    end;

}