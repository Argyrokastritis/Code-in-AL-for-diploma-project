table 50040 "Insurance Claim"
{

    fields
    {
        field(1; "Insurance No."; Code[30]) { TableRelation = "Main Insurance"; }
        field(10; "entry no."; Integer) { }

        field(20; Status; Option)
        {
            Caption = 'Insurance status';
            OptionMembers = pending,accepted,rejected;
        }
        field(40; reviewer; Code[30]) { }
        field(50; "claim amount"; Decimal) { }

    }
    keys
    {
        key(PK; "Insurance No.") { }

    }

}