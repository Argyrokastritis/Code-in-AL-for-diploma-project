tableextension 50070 "Customerext" extends Customer
{
    fields
    {
        field(50110; "Insurer's Payment Consistency"; Option)
        {
            Caption = 'Insurer Payment Consistency';
            OptionMembers = "Very consistent",Consistent,"Not very consistent";
        }
        field(50120; "Insurer's attitude"; Option)
        {
            Caption = 'Insurer Attitude';
            OptionMembers = "Very good attitude","Good attitude","OK attitude","Bad attitude";
        }
        field(50130; "insured job titles"; Enum "insured job titles")
        {
            Caption = 'Insured job title';
        }
        field(50140; "Insurer character description"; text[250])
        {
            Caption = 'Insurer character description';
        }
    }
}