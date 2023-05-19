page 50040 "Subpage Insurance Claim"
{
    PageType = ListPart;
    SourceTable = "Insurance claim";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Insurance No."; "Insurance No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                }
                field(reviewer; reviewer)
                {
                    ApplicationArea = All;
                }
                field("claim amount"; "claim amount")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        "Main Insurance": Record "Main Insurance";
                        Total_Claim_of_Claims: Decimal;
                        trexon_amount: Decimal;
                    begin
                        trexon_amount := rec."claim amount";
                        "Main Insurance".Get("Insurance No.");
                        if "claim amount" > "Main Insurance"."Max Benefits Limit" then begin
                            Error('The Monthly claimed amount cannot be grater than the Max Benefits Limit');
                        end;
                        //Message('filters:%1', rec.GetFilters);
                        //error that hits when the Amount of amounts is grater than Amount that the insured will ever pay
                        Total_Claim_of_Claims := 0;
                        rec.SetRange("Insurance No.", rec."Insurance No.");
                        if rec.find('-') then
                            repeat
                                Total_Claim_of_Claims += "claim amount";
                            until rec.next <= 0;
                        //Total_Amount_of_Amounts := rec.amount
                        Total_Claim_of_Claims := Total_Claim_of_Claims + trexon_amount;
                        message('The Total Amount of the amounts is %1', Total_Claim_of_Claims);

                        if Total_Claim_of_Claims > "Main Insurance"."Max Benefits Limit" then begin
                            Error('The Total Amount of amounts cannot be greater than the insurance amount that the insured will ever pay');
                        end;
                    end;
                }
                field("Claim Date"; "Claim Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Rec."entry no." := Rec.NextEntryNo();
    end;
}