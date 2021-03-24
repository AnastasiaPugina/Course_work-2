<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="Deanery.Subjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 807px">
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Создать элемент"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Создать элемент"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Создать элемент"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование" NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
           <div style="height: 407px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_sub" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="5" Height="100%" HorizontalAlign="Left" Width="70%">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" SortExpression="Id_sub" ReadOnly="True" />
                    <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Id_sub" DataSourceID="SqlDataSource1" Height="100%" HorizontalAlign="Right" Width="20%" DefaultMode="Insert">
                <Fields>
                    <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" ReadOnly="True" SortExpression="Id_sub" />
                    <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString1 %>" DeleteCommand="DELETE FROM [Subjects] WHERE [Id_sub] = @original_Id_sub AND [Title_sub] = @original_Title_sub AND [Professor] = @original_Professor" InsertCommand="INSERT INTO [Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (@Title_sub, @Id_sub, @Professor)" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [Title_sub] = @Title_sub, [Professor] = @Professor WHERE [Id_sub] = @original_Id_sub AND [Title_sub] = @original_Title_sub AND [Professor] = @original_Professor" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Title_sub" Type="String" />
                    <asp:Parameter Name="original_Professor" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title_sub" Type="String" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Professor" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title_sub" Type="String" />
                    <asp:Parameter Name="Professor" Type="String" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Title_sub" Type="String" />
                    <asp:Parameter Name="original_Professor" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
          </div>
         <div style="height: 430px">
            <div style="height: 258px">
                <asp:TextBox ID="TextBox1" runat="server" Height="17px" style="margin-top: 14px" Width="119px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Поиск" style="margin-left: 7px" Width="69px" />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_sub" DataSourceID="SqlDataSource2" Height="100%" style="margin-top: 16px" Width="70%">
                    <Columns>
                        <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                        <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" ReadOnly="True" SortExpression="Id_sub" />
                        <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString1 %>" SelectCommand="SELECT * FROM [Subjects] WHERE (([Professor] LIKE '%' + @Professor + '%') OR ([Title_sub] LIKE '%' + @Title_sub + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Professor" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Title_sub" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
