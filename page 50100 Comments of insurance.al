page 50100 "Comments of insurance"
{
    PageType = Card;
    SourceTable = "Comments of insurance";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;



    layout
    {
        area(content)
        {
            //get the info from Course Table
            group(General)
            {
                field("Insurance No."; "Insurance No.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the code name of the insurance so you know in what insurance you are';
                }
                field("Comment no."; "Comment no.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the order of the comment as many comments can be added in an insurance';
                }
                field(Comment; Comment)
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the description of the comment';
                }
            }
        }
    }
}