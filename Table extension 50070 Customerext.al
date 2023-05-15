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
        field(50130; "Insurer's job title"; Option)
        {
            Caption = 'Insurer job title';
            OptionMembers = "Actuary","Architect","Assistant Golf Personal","Attorney","Bank Teller","Caretaker or House Sitter","Entepreneur","Executive assistant","Funeral Attendant","High School Teacher","HVAC Technician","Library Assistant","Locksmith","Machinery operator","Management Consultant","Manufacturing Assembler","Mathematician","Mechanic","Paralegal","Parking Attendant","Personal Assistant","Primary school teacher","Recruiter","Security Guard","Shelf Stocker","Translator","University Professor","Yoga Instructor";
        }
    }
}