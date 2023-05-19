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
                    trigger OnValidate()
                    var
                        "Main Insurance": Record "Main Insurance";
                        Total_Amount_of_Amounts: Decimal;
                    begin
                        "Main Insurance".get(rec."Insurance No.");
                        if amount > "Main Insurance".fee then begin
                            Error('The Monthle amount payment cannot be greater that the monthly fee');
                        end;
                        //Message('filters:%1', rec.GetFilters);
                        //error that hits when the Amount of amounts is grater than Amount that the insured will ever pay
                        Total_Amount_of_Amounts := 0;
                        rec.SetRange("Insurance No.", rec."Insurance No.");
                        if rec.find('-') then
                            repeat
                                Total_Amount_of_Amounts += amount;
                            until rec.next <= 0;
                        //Total_Amount_of_Amounts := rec.amount
                        message('The Total Amount of the amounts is %1', Total_Amount_of_Amounts);

                        if Total_Amount_of_Amounts > "Main Insurance".Amount then begin
                            Error('The Total Amount of amounts cannot be greater than the insurance amount that the insured will ever pay');
                        end;

                    end;
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