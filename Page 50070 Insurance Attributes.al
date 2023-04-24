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

                field(id; id)
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the id of the attribute';
                }
                field("type"; "type")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the type of insurance that the attribute belongs to.The attributes are:Car,House,Life';
                }
                field("name"; "name")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'This is the name of the attribute so the user knows what is about.';
                }
                field("Description"; "Description")
                {
                    ApplicationArea = ALL;
                    ToolTip = 'This is the description of the attribute in order for the user to see more info and details about the attribute';
                }
            }

        }
    }
}