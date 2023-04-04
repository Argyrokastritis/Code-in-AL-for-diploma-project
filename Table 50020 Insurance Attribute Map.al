table 50020 "Insurance Attribute Map"
{
    fields
    {
        field(1; "Insurance No."; Code[30]) { Tablerelation = "Main Insurance"; }
        field(10; "attribute ID"; Code[10]) { Tablerelation = "Insurance attribute"; }
    }
    keys
    {
        key(PK; "Insurance No.") { }
        key("attribute ID"; "attribute ID") { }
    }

}