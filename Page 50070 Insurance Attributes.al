page 50070 "Insurance Attributes"
{
    PageType = Card;
    SourceTable = "Insurance attribute";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;



    layout
    {
        area(content)
        {

            //get the info from Course Table
            group(General)
            {

                field(id; id) { ApplicationArea = Basic; Importance = Promoted; }


                field("type"; "type") { ApplicationArea = Basic; Importance = Promoted; }
                field("name"; "name") { ApplicationArea = Basic; Importance = Promoted; }
            }


        }
    }
}