
page 50050 "Insurances List"
{
    PageType = List;
    SourceTable = "Main Insurance";
    ApplicationArea = Basic;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            //get the info from Course Table
            repeater(General)
            {
                field("No."; "No.") { ApplicationArea = Basic; Importance = Promoted; }
                field("type"; "type") { ApplicationArea = Basic; Importance = Promoted; }
                field("Insured Name"; "Insured Name") { ApplicationArea = Basic; Importance = Promoted; }
                field("Insured No."; "Insured No.") { ApplicationArea = Basic; }
                field("Insurance Date"; "Insurance Date") { ApplicationArea = Basic; }
                field("Insured To"; "Insured To") { ApplicationArea = Basic; }
                //Question 5 of case
                field("Handler no."; "Handler no.") { ApplicationArea = Basic; }
                field("Fee"; "Fee") { ApplicationArea = Basic; Importance = Promoted; }
                field("Amount"; "Amount") { ApplicationArea = Basic; Importance = Promoted; }
                field("Current Claims Amount"; "Current Claims Amount") { ApplicationArea = Basic; Importance = Promoted; }
                field("Max Benefits Limit"; "Max Benefits Limit") { ApplicationArea = Basic; Importance = Promoted; }
                field("State of Insurance"; "State of Insurance") { ApplicationArea = Basic; Importance = Promoted; }
            }
        }
    }


    trigger OnOpenPage()
    var
        Mainins: Record "Main Insurance";
    begin

        Rec.FindSet();

        if Mainins.FindSet() then begin
            repeat
                //syn ta alla
                Rec."No." := Mainins."No.";
            until Mainins.Next() = 0;
        end;
    end;

}