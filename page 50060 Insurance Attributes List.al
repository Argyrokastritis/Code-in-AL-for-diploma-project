page 50060 "Insurance Attributes List"
{
    PageType = List;
    SourceTable = "Insurance Attribute";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            //get the info from Course Table
            repeater(General)
            {
                field("No."; id) { Visible = false; ApplicationArea = Basic; Importance = Promoted; }
                field("type"; "type") { ApplicationArea = Basic; Importance = Promoted; }
                field("Insurance attribute"; name) { ApplicationArea = Basic; Importance = Promoted; }
                field("Description"; "Description") { ApplicationArea = ALL; }
            }
        }
    }
}