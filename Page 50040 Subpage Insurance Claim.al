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
                    begin

                        "Main Insurance".Get("Insurance No.");
                        if "claim amount" > "Main Insurance"."Max Benefits Limit" then begin
                            Error('The Monthly claimed amount cannot be grater than the Max Benefits Limit');
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