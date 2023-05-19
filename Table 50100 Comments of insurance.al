table 50100 "Comments of insurance"
{

    fields
    {
        field(1; "Insurance No."; Code[30])
        {
            TableRelation = "Main Insurance";
        }
        field(10; "Comment no."; Integer)
        {

        }
        field(40; Comment; Text[250])
        {

        }
    }
    keys
    {
        key(PK; "Insurance No.", "Comment no.")
        {

        }
    }
}