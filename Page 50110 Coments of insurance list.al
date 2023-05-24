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
                    ToolTip = 'The No of the insurance in row';
                }
                field("type"; "Comment no.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'The type of the comment';
                }
                field(Comment; Comment)
                {
                    ApplicationArea = ALL;
                    ToolTip = 'The comment that describes it';
                }
            }
        }
    }

}