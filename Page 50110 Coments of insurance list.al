page 50110 "Comments of insurance List"
{
    PageType = List;
    SourceTable = "Comments of insurance";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            //get the info from Course Table
            repeater(General)
            {
                field("No."; "Insurance No.")
                {
                    Visible = false;
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("type"; "Comment no.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }

}