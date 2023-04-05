pageextension 50060 "Sales Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        addbefore("Customer Nos.")
        {

            field("Insurance Nos."; "Insurance Nos.")
            {
                //Importance = Promoted;
                //ToolTip = 'sub';
                ApplicationArea = All;
                // = true;
            }

        }

    }
}


