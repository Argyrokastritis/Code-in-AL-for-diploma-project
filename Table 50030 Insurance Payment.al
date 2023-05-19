table 50030 "Insurance Payment"
{

    fields
    {
        field(1; "Insurance No."; Code[30])
        {
            TableRelation = "Main Insurance";
        }
        field(10; "entry no."; Integer)
        {

        }
        field(20; "Payment type"; Option)
        {
            Caption = 'Insurance payment type';
            OptionMembers = Annual,Monthly,Onetime;
        }
        field(40; amount; Decimal)
        {

        }
        field(50; "Insurance Date"; Date)
        {

        }
        field(60; "Descritpion"; Text[250])
        {

        }
    }
    keys
    {
        key(PK; "Insurance No.", "entry no.")
        {

        }
    }

    //It changes the entry no on every insert with +1
    procedure NextEntryNo() NextEntryNo: Integer
    var
        last_entryno: Integer;
        Record2: Record "Insurance Payment";
    begin
        //Removes all filters, including any special filters set by MarkedOnly, changes fields select for loading back to all, 
        //and changes the current key to the primary key. 
        //Also removes any marks on the record and clears any AL variables defined on its table definition.
        Record2.Reset();
        //
        if Record2.FindLast() then begin
            last_entryno := Record2."entry no.";
            NextEntryNo := last_entryno + 1;
        end;
    end;
}