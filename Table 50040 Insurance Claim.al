table 50040 "Insurance Claim"
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
        field(20; Status; Option)
        {
            Caption = 'Insurance status';
            OptionMembers = pending,accepted,rejected;
        }
        field(40; reviewer; Code[30])
        {

        }
        field(50; "claim amount"; Decimal)
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
        Record2: Record "Insurance Claim";
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