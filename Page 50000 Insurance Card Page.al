
page 50000 "Insurance Card Page"
{
    PageType = Card;
    SourceTable = "Main Insurance";
    ApplicationArea = ALL;
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Insurance Card Page';



    layout
    {
        area(content)
        {


            group(General)
            {
                field("No."; "No.") { ApplicationArea = Basic; Importance = Promoted; }
                field("type"; "type") { ApplicationArea = Basic; Importance = Promoted; }
                field("Insured No."; "Insured No.")
                {
                    ApplicationArea = Basic;

                    trigger OnValidate()
                    var
                        CustomerInfo: Record Customer;
                    begin
                        //autocompletes the name by only choosing the no
                        CustomerInfo.get(rec."Insured No.");
                        //Message('%1', "Insured No.");
                        //Message('%1', "Insured Name");
                        "Insured Name" := CustomerInfo.Name;
                    end;

                }
                field("Insured Name"; "Insured Name") { ApplicationArea = Basic; Importance = Promoted; }
                field("Insurance Date"; "Insurance Date") { ApplicationArea = Basic; }
                field("Insured To"; "Insured To") { ApplicationArea = Basic; }
                field("Handler no."; "Handler no.") { ApplicationArea = Basic; }
                field("Fee"; "Fee") { ApplicationArea = Basic; Importance = Promoted; }
                field("Amount"; "Amount") { ApplicationArea = Basic; Importance = Promoted; }
                field("Current Claims Amount"; "Current Claims Amount") { ApplicationArea = Basic; Importance = Promoted; }
                field("Max Benefits Limit"; "Max Benefits Limit") { ApplicationArea = Basic; Importance = Promoted; }
                field("State of Insurance"; "State of Insurance") { ApplicationArea = Basic; Importance = Promoted; }

            }
            group(parts)
            {

                part("Subpage Insurance Payment"; "Subpage Insurance Payment")
                {
                    ApplicationArea = all;
                    SubPageLink = "Insurance No." = FIELD("No.");
                    SubPageView = SORTING("Insurance No.");

                }

                part("Subpage Insurance Claim"; "Subpage Insurance Claim")
                {
                    ApplicationArea = all;
                    SubPageLink = "Insurance No." = FIELD("No.");
                    SubPageView = SORTING("Insurance No.");
                }
            }

        }
    }

    actions
    {
        area(Creation)
        {
            action("insurance attributes")
            {
                ApplicationArea = All;
                Description = 'Press the View insurance details button to see all isurance attributes';
                Caption = 'View insurance details';
                Image = ChartOfAccounts;
                Promoted = true;
                PromotedIsBig = true;
                //PromotedCategory = Category7;
                RunObject = Page "Insurance Attributes Mapping";
                RunPageLink = "Insurance No." = FIELD("No.");
                ToolTip = 'View or add comments for the record.';
            }
            action("insurance comments")
            {
                ApplicationArea = All;
                Description = 'Press the View insurance details button to add insurance comments';
                Caption = 'View insurance comments';
                Image = ChartOfAccounts;
                Promoted = true;
                PromotedIsBig = true;
                //PromotedCategory = Category7;
                RunObject = Page "Comments of insurance list";
                RunPageLink = "Insurance No." = FIELD("No.");
                ToolTip = 'View or add comments for the record.';
            }
        }
    }


}