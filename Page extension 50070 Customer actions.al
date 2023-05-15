pageextension 50070 "Customer actions" extends "Customer Card"
{
    layout
    {
        //TODO make a new group session in order to add behavioural statistics
        addbefore(Address)
        {
            group(Behavioural_Statistics)
            {
                Caption = 'Behavioural Statistics';
                Editable = false;
                Visible = true;
                group(Behaviour)
                {
                    Caption = 'Balance';
                    field("Insurer's Payment Consistency"; "Insurer's Payment Consistency")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Money Owed - Current';
                        ToolTip = 'Specifies the payment amount that the customer owes for completed sales. This value is also known as the customer''s balance.';

                        trigger OnDrillDown()
                        begin
                            OpenCustomerLedgerEntries(false);
                        end;
                    }
                    field("Insurer's attitude"; "Insurer's attitude")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Money Owed - Expected';
                        Editable = false;
                        Importance = Additional;
                        ToolTip = 'Specifies the payment amount that the customer will owe when ongoing sales invoices and credit memos are completed. The value is calculated asynchronously so there might be a delay in updating this field.';

                    }
                    field("Insurer's job title"; "Insurer's job title")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Money Owed - Total';
                        Style = Strong;
                        StyleExpr = TRUE;
                        ToolTip = 'Specifies the payment amount that the customer owes for completed sales plus sales that are still ongoing. The value is calculated asynchronously so there might be a delay in updating this field.';
                    }
                }
            }
        }
    }

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
                    //call of the function that sends the e-mail
                    SendEmailWithAttachment('giannisargurokastritis@gmail.com', 'Customer report', 'Body', 50020, '');
                end;

            }

        }
    }

    //Try to make a procedure that sends with e-mail the exported report inside the action
    procedure SendEmailWithAttachment(ToRecepient: Text; Subject: Text; Body: Text; ReportID: integer; Parameters: Text)
    var
        Email: Codeunit Email; //system codeunit
        EmailMessage: Codeunit "Email Message";
        TempBlob: Codeunit "Temp Blob";
        OutStr: OutStream;
        Instr: InStream;
        Filename: Text[250];
        Filetype: Text[250];
    begin
        TempBlob.CreateOutStream(OutStr);
        //specific FILE to be added HERE
        //Example with a report:
        Report.SaveAs(ReportID, Parameters, ReportFormat::Pdf, OutStr);
        TempBlob.CreateInStream(Instr);


        EmailMessage.Create(ToRecepient, Subject, Body, true);
        EmailMessage.AddAttachment(Filename, Filetype, Instr);
        Email.Send(EmailMessage, Enum::"Email Scenario"::Default);
    end;

}



