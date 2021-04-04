<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Curriculum.aspx.cs" Inherits="Deanery.Curriculum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами" NavigateUrl="~/Procedures.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование" NavigateUrl="~/Admin.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты" NavigateUrl="~/Reports.aspx"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
       
            <div style="height: 526px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_plan" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="5" Height="100%" HorizontalAlign="Left" Width="70%">
                <Columns>
                    <asp:BoundField DataField="Id_plan" HeaderText="Id_plan" ReadOnly="True" SortExpression="Id_plan" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" SortExpression="Id_sub" />
                    <asp:CheckBoxField DataField="Offset" HeaderText="Offset" SortExpression="Offset" />
                    <asp:CheckBoxField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:CheckBoxField DataField="Course_work" HeaderText="Course_work" SortExpression="Course_work" />
                    <asp:CheckBoxField DataField="Course_project" HeaderText="Course_project" SortExpression="Course_project" />
                </Columns>
                <RowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="5" DataKeyNames="Id_plan" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="100%" HorizontalAlign="Right" Width="25%">
                <Fields>
                    <asp:BoundField DataField="Id_plan" HeaderText="Id_plan" ReadOnly="True" SortExpression="Id_plan" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" SortExpression="Id_sub" />
                    <asp:CheckBoxField DataField="Offset" HeaderText="Offset" SortExpression="Offset" />
                    <asp:CheckBoxField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                    <asp:CheckBoxField DataField="Course_work" HeaderText="Course_work" SortExpression="Course_work" />
                    <asp:CheckBoxField DataField="Course_project" HeaderText="Course_project" SortExpression="Course_project" />
                </Fields>
                <RowStyle HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString2 %>" SelectCommand="SELECT * FROM [Curriculum]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Curriculum] WHERE [Id_plan] = @original_Id_plan AND [Title] = @original_Title AND [Id_sub] = @original_Id_sub AND [Offset] = @original_Offset AND [Exam] = @original_Exam AND [Semester] = @original_Semester AND (([Course_work] = @original_Course_work) OR ([Course_work] IS NULL AND @original_Course_work IS NULL)) AND (([Course_project] = @original_Course_project) OR ([Course_project] IS NULL AND @original_Course_project IS NULL))" InsertCommand="INSERT INTO [Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (@Id_plan, @Title, @Id_sub, @Offset, @Exam, @Semester, @Course_work, @Course_project)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Curriculum] SET [Title] = @Title, [Id_sub] = @Id_sub, [Offset] = @Offset, [Exam] = @Exam, [Semester] = @Semester, [Course_work] = @Course_work, [Course_project] = @Course_project WHERE [Id_plan] = @original_Id_plan AND [Title] = @original_Title AND [Id_sub] = @original_Id_sub AND [Offset] = @original_Offset AND [Exam] = @original_Exam AND [Semester] = @original_Semester AND (([Course_work] = @original_Course_work) OR ([Course_work] IS NULL AND @original_Course_work IS NULL)) AND (([Course_project] = @original_Course_project) OR ([Course_project] IS NULL AND @original_Course_project IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_plan" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Offset" Type="Boolean" />
                    <asp:Parameter Name="original_Exam" Type="Boolean" />
                    <asp:Parameter Name="original_Semester" Type="Int32" />
                    <asp:Parameter Name="original_Course_work" Type="Boolean" />
                    <asp:Parameter Name="original_Course_project" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_plan" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Offset" Type="Boolean" />
                    <asp:Parameter Name="Exam" Type="Boolean" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                    <asp:Parameter Name="Course_work" Type="Boolean" />
                    <asp:Parameter Name="Course_project" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Offset" Type="Boolean" />
                    <asp:Parameter Name="Exam" Type="Boolean" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                    <asp:Parameter Name="Course_work" Type="Boolean" />
                    <asp:Parameter Name="Course_project" Type="Boolean" />
                    <asp:Parameter Name="original_Id_plan" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Id_sub" Type="Int32" />
                    <asp:Parameter Name="original_Offset" Type="Boolean" />
                    <asp:Parameter Name="original_Exam" Type="Boolean" />
                    <asp:Parameter Name="original_Semester" Type="Int32" />
                    <asp:Parameter Name="original_Course_work" Type="Boolean" />
                    <asp:Parameter Name="original_Course_project" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </div>
         
            <div style="height: 303px; margin-top: 42px;">
                <asp:Label ID="Label1" runat="server" Text="Ведите наименование группы:"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 10px" Width="125px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Поиск" Width="68px" Height="22px" />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_plan" DataSourceID="SqlDataSource2" Height="193px" Width="589px" style="margin-top: 8px">
                    <Columns>
                        <asp:BoundField DataField="Id_plan" HeaderText="Id_plan" ReadOnly="True" SortExpression="Id_plan" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" SortExpression="Id_sub" />
                        <asp:CheckBoxField DataField="Offset" HeaderText="Offset" SortExpression="Offset" />
                        <asp:CheckBoxField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                        <asp:CheckBoxField DataField="Course_work" HeaderText="Course_work" SortExpression="Course_work" />
                        <asp:CheckBoxField DataField="Course_project" HeaderText="Course_project" SortExpression="Course_project" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString2 %>" SelectCommand="SELECT * FROM [Curriculum] WHERE ([Title] LIKE '%' + @Title + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Curriculum] WHERE [Id_plan] = @original_Id_plan AND [Title] = @original_Title AND [Id_sub] = @original_Id_sub AND [Offset] = @original_Offset AND [Exam] = @original_Exam AND [Semester] = @original_Semester AND (([Course_work] = @original_Course_work) OR ([Course_work] IS NULL AND @original_Course_work IS NULL)) AND (([Course_project] = @original_Course_project) OR ([Course_project] IS NULL AND @original_Course_project IS NULL))" InsertCommand="INSERT INTO [Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (@Id_plan, @Title, @Id_sub, @Offset, @Exam, @Semester, @Course_work, @Course_project)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Curriculum] SET [Title] = @Title, [Id_sub] = @Id_sub, [Offset] = @Offset, [Exam] = @Exam, [Semester] = @Semester, [Course_work] = @Course_work, [Course_project] = @Course_project WHERE [Id_plan] = @original_Id_plan AND [Title] = @original_Title AND [Id_sub] = @original_Id_sub AND [Offset] = @original_Offset AND [Exam] = @original_Exam AND [Semester] = @original_Semester AND (([Course_work] = @original_Course_work) OR ([Course_work] IS NULL AND @original_Course_work IS NULL)) AND (([Course_project] = @original_Course_project) OR ([Course_project] IS NULL AND @original_Course_project IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id_plan" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Id_sub" Type="Int32" />
                        <asp:Parameter Name="original_Offset" Type="Boolean" />
                        <asp:Parameter Name="original_Exam" Type="Boolean" />
                        <asp:Parameter Name="original_Semester" Type="Int32" />
                        <asp:Parameter Name="original_Course_work" Type="Boolean" />
                        <asp:Parameter Name="original_Course_project" Type="Boolean" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id_plan" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Id_sub" Type="Int32" />
                        <asp:Parameter Name="Offset" Type="Boolean" />
                        <asp:Parameter Name="Exam" Type="Boolean" />
                        <asp:Parameter Name="Semester" Type="Int32" />
                        <asp:Parameter Name="Course_work" Type="Boolean" />
                        <asp:Parameter Name="Course_project" Type="Boolean" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Id_sub" Type="Int32" />
                        <asp:Parameter Name="Offset" Type="Boolean" />
                        <asp:Parameter Name="Exam" Type="Boolean" />
                        <asp:Parameter Name="Semester" Type="Int32" />
                        <asp:Parameter Name="Course_work" Type="Boolean" />
                        <asp:Parameter Name="Course_project" Type="Boolean" />
                        <asp:Parameter Name="original_Id_plan" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Id_sub" Type="Int32" />
                        <asp:Parameter Name="original_Offset" Type="Boolean" />
                        <asp:Parameter Name="original_Exam" Type="Boolean" />
                        <asp:Parameter Name="original_Semester" Type="Int32" />
                        <asp:Parameter Name="original_Course_work" Type="Boolean" />
                        <asp:Parameter Name="original_Course_project" Type="Boolean" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        
    </form>
</body>
</html>
