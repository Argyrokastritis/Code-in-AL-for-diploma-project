tableextension 50070 "Customerext" extends Customer
{
    fields
    {
        field(50110; "Insured Payment Consistency"; Option)
        {
            Caption = 'Insured Payment Consistency';
            OptionMembers = "Very consistent",Consistent,"Not very consistent";
        }
        field(50120; "Insured attitude"; Option)
        {
            Caption = 'Insured Attitude';
            OptionMembers = "Very good attitude","Good attitude","OK attitude","Bad attitude";
        }
        field(50130; "insured job titles"; Enum "insured job titles")
        {
            Caption = 'Insured job title';
        }
        field(50140; "Insured character description"; text[250])
        {
            Caption = 'Insured character description';
        }
        field(50150; "Insured company promotion"; Option)
        {
            Caption = 'Insured company promotion';
            OptionMembers = "Brought less than 2 customers","Brought between 2 and 5 customers","Brought between 5 and 7 customers","Brought between 7 and 10 customers","Brought more tan 10 customers";
        }
    }
}