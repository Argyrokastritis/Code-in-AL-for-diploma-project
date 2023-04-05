tableextension 50060 "Sales Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Insurance Nos."; Code[30])
        {
            Caption = 'Insurance No:';
            TableRelation = "No. Series";
        }
    }
}