
page 50140 "Insurances Claims List"
{
    PageType = List;
    SourceTable = "Insurance Claim";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;
    CardPageId = "Subpage Insurance Claim";
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
                field(Status; Status)
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                }
                field(reviewer; reviewer)
                {
                    ApplicationArea = Basic;
                }
                field("claim amount"; "claim amount")
                {
                    ApplicationArea = Basic;
                }
                field("Claim Date"; "Claim Date")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }
}