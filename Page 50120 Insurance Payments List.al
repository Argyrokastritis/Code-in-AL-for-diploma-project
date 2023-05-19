
page 50120 "Insurances Payment List"
{
    PageType = List;
    SourceTable = "Insurance Payment";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;
    CardPageId = "Subpage Insurance Payment";
    Editable = true;

    layout
    {
        area(content)
        {
            //get the info from Course Table
            repeater(General)
            {
                field("Insurance No."; "Insurance No.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("entry no."; "entry no.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field("Payment type"; "Payment type")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field(amount; amount)
                {
                    ApplicationArea = Basic;
                }
                field("Insurance Date"; "Insurance Date")
                {
                    ApplicationArea = Basic;
                }
                field("Descritpion"; "Descritpion")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }
}