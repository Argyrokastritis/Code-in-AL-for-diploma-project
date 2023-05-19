
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


            group("General Insurance Info")
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field("type"; Rec."type")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'Specifies the type of the insurance.The available types are: Car,House,Life';
                }
                field("Insured No."; Rec."Insured No.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'Specifies the no of the insured person and when you choose the no the insered name below is competed on itself';
                    trigger OnValidate()
                    var
                        CustomerInfo: Record Customer;
                    begin
                        //autocompletes the name by only choosing the no
                        CustomerInfo.get(Rec."Insured No.");
                        //Message('%1', "Insured No.");
                        //Message('%1', "Insured Name");
                        Rec."Insured Name" := CustomerInfo.Name;
                    end;

                }
                field("Insured Name"; "Insured Name")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specifies the name of the insured person';
                }
                field("Insurance Date"; "Insurance Date")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'It specifies the beginning of the insurance Date';
                }
                field("Insured To"; "Insured To")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'It specifies the ending of the insurance date';
                }
                field("Handler no."; "Handler no.")
                {
                    ApplicationArea = Basic;
                    ToolTip = 'It specifies the employee that handles the insurance';
                }
                field("Fee"; "Fee")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specifies the yearly or monthly fee that the insured person is paying';

                    trigger OnValidate()
                    var

                    begin

                        if Fee > Amount then begin
                            Error('The Monthly fee cannot be greater than the total Amount the insured person will pay');
                        end;

                    end;
                }
                field("Amount"; "Amount")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specidies the total amount that the insured person will pay';

                    trigger OnValidate()
                    var

                    begin
                        if Fee > Amount then begin
                            Error('The Monthly fee cannot be greater than the total Amount the insured person will pay');
                        end;
                    end;
                }
                field("Current Claims Amount"; "Current Claims Amount")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specifies the current claims in eyros that the insured person has taken from the insurance so far';

                    trigger OnValidate()
                    var
                    begin

                        if "Current Claims Amount" > "Max Benefits Limit" then begin
                            Error('The Monthly current claims cannot be greater than the total Amount the insured person will receive frpm the isurance');
                        end;
                    end;
                }
                field("Max Benefits Limit"; "Max Benefits Limit")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specifies the max benefits limit that the insured person can get from the insurance that he has made';

                    trigger OnValidate()
                    var
                    begin

                        if "Current Claims Amount" > "Max Benefits Limit" then begin
                            Error('The Monthly current claims cannot be greater than the total Amount the insured person will receive from the isurance');
                        end;
                    end;
                }
                field("State of Insurance"; "State of Insurance")
                {
                    ApplicationArea = Basic;
                    Importance = Promoted;
                    ToolTip = 'It specifies the current state of the insurance the states are: Active,fullfiled or cancelled';
                }
            }
            group("Insurance Payments and Claims")
            {

                part("Insurance Payment Inspection"; "Subpage Insurance Payment")
                {
                    ApplicationArea = all;
                    SubPageLink = "Insurance No." = FIELD("No.");
                    SubPageView = SORTING("Insurance No.");
                    ToolTip = 'Here is an inspection page that shows you an inspection of an insurance payment';
                    Caption = 'Insurance Payment Inspection';
                }

                part("Insurance Claims Inspection"; "Subpage Insurance Claim")
                {
                    ApplicationArea = all;
                    SubPageLink = "Insurance No." = FIELD("No.");
                    SubPageView = SORTING("Insurance No.");
                    ToolTip = 'Here is an inspection page that shows you an inspection of the insurance claims';
                    Caption = 'Insurance Claims Inspection';
                }
            }
        }
    }


    actions
    {
        area(Navigation)
        {
            group("More insurance info")
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
            group("Insurance report")
            {
                action("Corresponding insurance report")
                {
                    ApplicationArea = All;
                    Description = 'Press the Corresponding insurance report button to view the report for this customer';
                    Caption = 'View Corresponding insurance report';
                    Image = ChartOfAccounts;
                    Promoted = true;
                    PromotedIsBig = true;
                    //PromotedCategory = Category7;
                    //RunObject = Report "Customer's insurance report";
                    ToolTip = 'View Corresponding insurance report';

                    //trigger OnAction()begin
                    trigger OnAction()
                    var
                        Main_insurance: record "Main Insurance";
                        Customer_report: Report "Customer's insurance report";
                        Customer: Record Customer;
                    begin
                        //Call the function set customer with the No, which is the customer No.
                        Customer.Get("Insured No.");

                        Customer_report.setcustomer(Customer."No.");
                        Customer_report.Run();
                    end;
                    //TODO make a function inside customer report that calls the report inside the action                   
                }
            }
        }
    }
}