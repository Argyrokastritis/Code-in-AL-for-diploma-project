table 50030 "Insurance Payment"
{

    fields
    {
        field(1; "Insurance No."; Code[30]) { TableRelation = "Main Insurance"; }
        field(10; "entry no."; Integer) { }

        field(20; "Payment type"; Option)
        {
            Caption = 'Insurance payment type';
            OptionMembers = Annual,Monthly;
        }
        field(40; amount; Decimal) { }
        field(50; "Insurance Date"; Date) { }

    }
    keys
    {
        key(PK; "Insurance No.") { }

    }

}