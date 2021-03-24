<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="Deanery.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 124px;
        }
    </style>
</head>
<body style="height: 1314px">
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Адмиистрирование " Value="Адмиистрирование " NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        
            <div style="height: 381px; margin-bottom: 0px;">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id_stud" AllowSorting="True" AllowPaging="True" CellPadding="5" HorizontalAlign="Left" Width="70%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                    <asp:BoundField DataField="Date_birth" HeaderText="Date_birth" SortExpression="Date_birth" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Id_stud" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="302px" Width="25%" OnPageIndexChanging="DetailsView1_PageIndexChanging" HorizontalAlign="Right">
                <Fields>
                    <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                    <asp:BoundField DataField="Date_birth" HeaderText="Date_birth" SortExpression="Date_birth" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString2 %>" SelectCommand="SELECT * FROM [Students]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Students] WHERE [Id_stud] = @original_Id_stud AND [FIO] = @original_FIO AND [Title] = @original_Title AND [Addres] = @original_Addres AND [Tel] = @original_Tel AND [Date_birth] = @original_Date_birth" InsertCommand="INSERT INTO [Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (@Id_stud, @FIO, @Title, @Addres, @Tel, @Date_birth)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Students] SET [FIO] = @FIO, [Title] = @Title, [Addres] = @Addres, [Tel] = @Tel, [Date_birth] = @Date_birth WHERE [Id_stud] = @original_Id_stud AND [FIO] = @original_FIO AND [Title] = @original_Title AND [Addres] = @original_Addres AND [Tel] = @original_Tel AND [Date_birth] = @original_Date_birth">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_FIO" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Addres" Type="String" />
                    <asp:Parameter Name="original_Tel" Type="Int64" />
                    <asp:Parameter Name="original_Date_birth" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="FIO" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Tel" Type="Int64" />
                    <asp:Parameter Name="Date_birth" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FIO" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Addres" Type="String" />
                    <asp:Parameter Name="Tel" Type="Int64" />
                    <asp:Parameter Name="Date_birth" Type="DateTime" />
                    <asp:Parameter Name="original_Id_stud" Type="Int32" />
                    <asp:Parameter Name="original_FIO" Type="String" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Addres" Type="String" />
                    <asp:Parameter Name="original_Tel" Type="Int64" />
                    <asp:Parameter Name="original_Date_birth" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
            <div>
                <asp:TextBox ID="TextBox1" runat="server" Width="138px" style="margin-top: 15px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Поиск" Width="64px" style="margin-left: 9px" OnClick="Button1_Click1" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 176px" Text="Вывод информации в Excel" Width="215px" />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="Id_stud" DataSourceID="SqlDataSource2" Width="70%" style="margin-top: 15px">
                    <Columns>
                        <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                        <asp:BoundField DataField="FIO" HeaderText="FIO" SortExpression="FIO" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Date_birth" HeaderText="Date_birth" SortExpression="Date_birth" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString2 %>" SelectCommand="SELECT * FROM [Students] WHERE (([FIO] LIKE '%' + @FIO + '%') OR ([Title] LIKE '%' + @Title + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FIO" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
              
    </form>
</body>
</html>
