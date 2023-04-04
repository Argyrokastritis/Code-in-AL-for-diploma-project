table 50010 "Insurance attribte"
{

    fields
    {
        field(1; id; Integer) { }
        field(10; "type"; enum "Insurance Type") { }
        //{ TableRelation = "Radio Show Type"; }
        field(20; "name"; Text[30]) { }



    }
    keys
    {
        key(PK; id) { }

    }


}