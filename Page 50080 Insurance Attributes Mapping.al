page 50080 "Insurance Attributes Mapping"
{
    PageType = List;
    SourceTable = "Insurance attribute Map";
    UsageCategory = ReportsAndAnalysis;



    layout
    {
        area(content)
        {
            //get the info from Course Table
            repeater(General)
            {
                field("Insurance No."; "Insurance No.") { ApplicationArea = ALL; Visible = false; }
                field("attribute ID"; "attribute ID") { ApplicationArea = ALL; }
                field("Attribute Name"; "Attribute Name") { ApplicationArea = ALL; }
                field("Description"; "Description") { ApplicationArea = ALL; }
            }
        }
    }

}