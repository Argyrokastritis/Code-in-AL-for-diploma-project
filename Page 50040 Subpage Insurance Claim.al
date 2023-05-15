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
}