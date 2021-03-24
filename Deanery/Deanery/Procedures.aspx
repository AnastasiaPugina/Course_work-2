<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Procedures.aspx.cs" Inherits="Deanery.Procedures" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 481px">
    <form id="form1" runat="server">
        <div>
            <div style="height: 103px">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная " Value="Главная "></asp:MenuItem>
                        <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                            <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Reports.aspx" Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
            <div style="height: 311px">
                <asp:Label ID="Label1" runat="server" Text="Введите специальность:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 11px" Width="162px"></asp:TextBox>
                <br />
                <br />
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Введите семестр:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 52px" Width="160px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Выполнить запрос" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left: 1px">
                    <Columns>
                        <asp:BoundField DataField="Specialty" HeaderText="Specialty" SortExpression="Specialty" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                        <asp:BoundField DataField="Title_sub" HeaderText="Title_sub" SortExpression="Title_sub" />
                        <asp:BoundField DataField="Id_plan" HeaderText="Id_plan" SortExpression="Id_plan" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:CheckBoxField DataField="Offset" HeaderText="Offset" SortExpression="Offset" />
                        <asp:CheckBoxField DataField="Exam" HeaderText="Exam" SortExpression="Exam" />
                        <asp:CheckBoxField DataField="Course_work" HeaderText="Course_work" SortExpression="Course_work" />
                        <asp:CheckBoxField DataField="Course_project" HeaderText="Course_project" SortExpression="Course_project" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString2 %>" SelectCommand="Plans" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="specialties" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="semesters" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
