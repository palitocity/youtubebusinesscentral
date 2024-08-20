report 50100 "Student Profile"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = StudentProfile;
    AdditionalSearchTerms = 'st';

    dataset
    {
        dataitem(StuentProfile; "Student Profile")
        {
            DataItemTableView = order(descending);
            RequestFilterFields = "Matric Number", "First Name";
            RequestFilterHeading = 'Retrive Student Profile Record';
            Description = 'Retrive Student Profile Record';

            column(First_Name; "First Name")
            {

            }
            column(Matric_Number; "Matric Number")
            {

            }

            trigger OnPreDataItem()
            begin 
             
            end;

            trigger OnPostDataItem()
            begin 

            end;

            trigger OnAfterGetRecord()
            begin 

            end;
        }
    }

    // requestpage
    // {
    //     AboutTitle = 'Teaching tip title';
    //     AboutText = 'Teaching tip content';
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {
    //                     ApplicationArea = All;

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(LayoutName)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    rendering
    {
        layout(StudentProfile)
        {
            Type = RDLC;
            LayoutFile = './Reports/StudentProfile.rdl';
        }
    }

    var
        myInt: Integer;
        SourceExpression: Text;


    trigger OnInitReport()
    begin
        Message('oninitreport event is run');
    end;

    trigger OnPostReport()
    begin
        Message('OnPostReport event is run');
    end;

    trigger OnPreReport()
    begin
        Message('OnPreReport event is run');
    end;

}