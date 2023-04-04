table 50020 "Insurance Attribute Map"
{
    fields
    {
        field(1; "Insurance No."; Code[30]) { Tablerelation = "Main Insurance"; }
        field(10; "attribute ID"; Code[10]) { Tablerelation = "Insurance attribute"; }
        field(20; "Attribute Name"; Text[50])
        {
            FieldClass = FlowField;
            //CalcFormula = lookup(Insurance."No." where(Insurance"No." = field(Insurance."No.")));
        }

    }
    keys
    {
        key(PK; "Insurance No.") { }
        key("attribute ID"; "attribute ID") { }
    }

}