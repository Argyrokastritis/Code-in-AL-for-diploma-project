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
            OptionMembers = "Actuary","Architect","Personal Assistant","Entepreneur","Security Guard","Mechanic","Recruiter","Mathematician","Locksmith","Management Consultant","Shelf Stocker","Caretaker or House Sitter","Library Assistant","Translator","HVAC Technician","Attorney","Paralegal","Executive assistant","Bank Teller","Parking Attendant","Machinery operator","Manufacturing Assembler","Funeral Attendant","Assistant Golf Personal","Yoga Instructor","Primary school teacher","High School Teacher","University Professor";
        }
    }
}