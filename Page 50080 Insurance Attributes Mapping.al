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
                field("Insurance No."; "Insurance No.")
                {
                    ApplicationArea = ALL;
                    Visible = false;
                    ToolTip = 'The No number of the attribute in row';
                }
                field("attribute ID"; "attribute ID")
                {
                    ApplicationArea = ALL;
                    ToolTip = 'The ID of the attribute';
                }
                field("Attribute Name"; "Attribute Name")
                {
                    ApplicationArea = ALL;
                    ToolTip = 'The name of the attribute of the insurance';
                }
                field("Description"; "Description")
                {
                    ApplicationArea = ALL;
                    ToolTip = 'The description of the attribute so the customer knows what the title of the attribute is about';
                }
            }
        }
    }
}