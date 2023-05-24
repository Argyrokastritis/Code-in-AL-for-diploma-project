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
                field("No."; id)
                {
                    Visible = false;
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'The id number of the attribute';
                }
                field("type"; "type")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'The type of the attribute';
                }
                field("Insurance attribute"; name)
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'The attribute of the insurance';
                }
                field("Description"; "Description")
                {
                    ApplicationArea = ALL;
                    ToolTip = 'The description of the attribute that describes what the attribute is about in order the customer to understand the title of the attribute';
                }
            }
        }
    }
}