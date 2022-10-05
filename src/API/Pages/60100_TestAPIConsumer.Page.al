page 60100 APIConsumerPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = APIConsumer;
    Caption = 'Consumer API Page';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Caption = 'ID';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Address';
                }
            }
        }
    }
}