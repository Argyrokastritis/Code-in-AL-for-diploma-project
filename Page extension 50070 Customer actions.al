pageextension 50070 "Customer actions" extends "Customer Card"
{
    layout
    {
        //make a new group session in order to add behavioural statistics
        addbefore("Address & Contact")
        {
            group(Behavioural_Statistics)
            {
                Caption = 'Behavioural Statistics';
                Editable = true;
                Visible = true;
                group(Behaviour)
                {
                    Caption = 'Balance';
                    field("Insured Payment Consistency"; "Insured Payment Consistency")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Insurer Payment Consistency';
                        ToolTip = 'Specifies whether the insured person is a consistent payer or not';

                    }
                    field("Insured attitude"; "Insured attitude")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Insurer attitude';
                        Editable = true;
                        Importance = Additional;
                        ToolTip = 'Specifies wheather the insurer attitude is good or bad';

                    }
                    field("Insured job title"; "insured job titles")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Insurer job title';
                        Style = Strong;
                        ToolTip = 'Specifies the job title of the insurer';
                    }
                    field("Insured character description"; "Insured character description")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Insurer character description';
                        Style = Standard;
                        ToolTip = 'Specifies the character of the insurer';
                    }
                    field("Isured company advertising"; "Insured company promotion")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Insured company advertising';
                        Style = Standard;
                        ToolTip = 'It specifies how many people the insured person has brought to the company by telling them that is a good insurance company';
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



