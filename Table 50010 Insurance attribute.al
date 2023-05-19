table 50010 "Insurance attribute"
{

    fields
    {
        field(1; id; Integer)
        {
            AutoIncrement = true;
        }
        field(10; "type"; enum "Insurance Type")
        {

        }
        //{ TableRelation = "Radio Show Type"; }
        field(20; "name"; Text[30])
        {

        }
        field(40; "Description"; Text[250])
        {

        }
    }
    keys
    {
        key(PK; id) { }

    }
    //here I put the dropdown field
    fieldgroups
    {
        fieldgroup(DropDown; id, type, name)
        {

        }
    }
}