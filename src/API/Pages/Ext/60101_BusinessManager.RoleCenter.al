pageextension 60101 BusinessManageExtension extends "Business Manager Role Center"
{
    layout
    {

    }

    actions
    {
        addafter(Action41)
        {
            group(API)
            {
                Caption = 'API Management';
                action(ActionTestAPI)
                {
                    ApplicationArea = Suite;
                    Caption = 'Test Page';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Student Page";
                }
                action(ActionTestAPIPage)
                {
                    ApplicationArea = Suite;
                    Caption = 'Test API Page';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page StudentAPIPage;
                }
                action(ActionAPIConsumer)
                {
                    ApplicationArea = Suite;
                    Caption = 'Consumer';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page ConsumerPage;
                }
                action(ActionAPIPage)
                {
                    ApplicationArea = Suite;
                    Caption = 'Consumer API Page';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page ConsumerAPIPage;
                }

                action(ActionCreatePO)
                {
                    ApplicationArea = Suite;
                    Caption = 'Create PO From API';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page PurchaseOrderDialog;
                }
            }
        }
    }

}