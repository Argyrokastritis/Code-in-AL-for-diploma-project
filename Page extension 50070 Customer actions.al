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



