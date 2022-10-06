page 60100 ConsumerPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = APIConsumer;
    Caption = 'Consumer Page';

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
                field(WebID; Rec.WebID)
                {
                    ApplicationArea = All;
                    Caption = 'Web ID';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(GetAPIData)
            {
                Caption = 'Get Data';
                ApplicationArea = All;

                trigger OnAction()
                var
                    http_Cleint: HttpClient;
                    http_ResponseMsg: HttpResponseMessage;
                    response: Text;
                    getValuesFromAPI: Codeunit GetResponseFromAPI;
                // dialogue: Page GetInput;
                // lAction: Action;
                begin
                    // lAction := dialogue.RunModal();
                    // case lAction of
                    //     action::OK:
                    //         dialogue.ExecuteOKCode();
                    //     action::Cancel:
                    //         dialogue.ExecuteCancelCode();
                    // end;
                    if (http_Cleint.Get('https://jsonplaceholder.typicode.com/users', http_ResponseMsg)) then begin
                        http_ResponseMsg.Content.ReadAs(response);
                        // Message(response);
                        getValuesFromAPI.GetResultfromResponseConsumerData(response);
                    end;
                    // else begin
                    //     Message('No Response');
                    // end;

                end;

            }

        }
    }
}


