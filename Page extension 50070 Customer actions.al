pageextension 50070 "Customer actions" extends "Customer Card"
{


    actions
    {
        addafter(PaymentRegistration)
        {
            action("View report")
            {
                ApplicationArea = All;
                Description = 'Press the View insurance details button to add insurance comments';
                Caption = 'View insurance report';
                Image = ChartOfAccounts;
                Promoted = true;
                PromotedIsBig = true;

                //Trigger that is enabled when an action occurs
                trigger OnAction()
                var
                    Main_insurance: record "Main Insurance";
                    Customer_report: Report "Customer's insurance report";
                begin
                    //Call the function set customer with the No, which is the customer No.
                    Customer_report.setcustomer(rec."No.");
                    Customer_report.Run();

                end;
            }
        }
    }
}



