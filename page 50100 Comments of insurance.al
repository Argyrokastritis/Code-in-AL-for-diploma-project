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

                field("Insurance No."; "Insurance No.") { ApplicationArea = Basic; Importance = Promoted; }


                field("Comment no."; "Comment no.") { ApplicationArea = Basic; Importance = Promoted; }
                field(Comment; Comment) { ApplicationArea = Basic; Importance = Promoted; }
            }


        }
    }
}