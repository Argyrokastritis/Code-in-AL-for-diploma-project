page 50030 "Subpage Insurance Payment"
{
    PageType = ListPart;
    SourceTable = "Insurance payment";
    //AutoSplitKey = true;
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

                }
                field("Payment type"; "Payment type")
                {
                    ApplicationArea = All;
                }
                field(amount; amount)
                {
                    ApplicationArea = All;
                }
                field("Insurance Date"; "Insurance Date")
                {
                    ApplicationArea = All;
                    Visible = true;
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