<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Deanery.Reports" %>

<%@ Register assembly="FastReport.Web, Version=2020.2.13.0, Culture=neutral, PublicKeyToken=db7e5ce63278458c" namespace="FastReport.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
            <div style="height: 130px">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Main.aspx" Text="Главная" Value="Главная"></asp:MenuItem>
                        <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                            <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Result_Session.aspx" Text="Результаты сессии" Value="Результаты сессии"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Procedures.aspx" Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        
            <div>
            <cc1:WebReport ID="WebReport1" runat="server" ReportDataSources="Data Source=LAPTOP-T84FSED9\SQLEXPRESS;Initial Catalog=DB_Deanery;Integrated Security=True" ReportResourceString="77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxSZXBvcnQgU2NyaXB0TGFuZ3VhZ2U9IkNTaGFycCIgUmVwb3J0SW5mby5DcmVhdGVkPSIwMy8xNi8yMDIxIDE2OjU3OjI1IiBSZXBvcnRJbmZvLk1vZGlmaWVkPSIwMy8xNi8yMDIxIDE3OjI5OjE2IiBSZXBvcnRJbmZvLkNyZWF0b3JWZXJzaW9uPSIyMDIwLjIuMTMuMCI+DQogIDxEaWN0aW9uYXJ5Pg0KICAgIDxNc1NxbERhdGFDb25uZWN0aW9uIE5hbWU9IkNvbm5lY3Rpb24iIENvbm5lY3Rpb25TdHJpbmc9InJpamNtbHF6UC8zMnUxUXR6SXNVSnFLRytDbW1yY0lINHU5V3pPR24zMGJqSkliTlNYd0RPTXZhNDMwNFZHV08zZUR2S0RzY3pJOEZIRllER3ViTWkyK3dTUmFVdTN3MTZKVHZpV01KcHFMNGQwZE1oZ2xHSHRPb3BvazVISG5tdFFsZ1dwZEpzUTl5bkFuM29OZmhDVzl5VnJhV3VrOGNhRHFTZ05kT2ppc0gvaTR2Mmd5Rys1MWRpckxYMFZaeFZPZk92SHhnQ1ZUMDVLaTNwR29IeWlFcGJ6b1h3PT0iPg0KICAgICAgPFRhYmxlRGF0YVNvdXJjZSBOYW1lPSJTdHVkZW50cyIgRGF0YVR5cGU9IlN5c3RlbS5JbnQzMiIgRW5hYmxlZD0idHJ1ZSIgVGFibGVOYW1lPSJTdHVkZW50cyI+DQogICAgICAgIDxDb2x1bW4gTmFtZT0iSWRfc3R1ZCIgRGF0YVR5cGU9IlN5c3RlbS5JbnQzMiIvPg0KICAgICAgICA8Q29sdW1uIE5hbWU9IkZJTyIgRGF0YVR5cGU9IlN5c3RlbS5TdHJpbmciLz4NCiAgICAgICAgPENvbHVtbiBOYW1lPSJUaXRsZSIgRGF0YVR5cGU9IlN5c3RlbS5TdHJpbmciLz4NCiAgICAgICAgPENvbHVtbiBOYW1lPSJBZGRyZXMiIERhdGFUeXBlPSJTeXN0ZW0uU3RyaW5nIi8+DQogICAgICAgIDxDb2x1bW4gTmFtZT0iVGVsIiBEYXRhVHlwZT0iU3lzdGVtLkludDY0Ii8+DQogICAgICAgIDxDb2x1bW4gTmFtZT0iRGF0ZV9iaXJ0aCIgRGF0YVR5cGU9IlN5c3RlbS5EYXRlVGltZSIvPg0KICAgICAgPC9UYWJsZURhdGFTb3VyY2U+DQogICAgPC9Nc1NxbERhdGFDb25uZWN0aW9uPg0KICA8L0RpY3Rpb25hcnk+DQogIDxSZXBvcnRQYWdlIE5hbWU9IlBhZ2UxIiBXYXRlcm1hcmsuRm9udD0iQXJpYWwsIDYwcHQiPg0KICAgIDxSZXBvcnRUaXRsZUJhbmQgTmFtZT0iUmVwb3J0VGl0bGUxIiBXaWR0aD0iNzE4LjIiIEhlaWdodD0iMzcuOCI+DQogICAgICA8VGV4dE9iamVjdCBOYW1lPSJUZXh0MSIgTGVmdD0iMjM2LjI1IiBUb3A9IjkuNDUiIFdpZHRoPSIxMDMuOTUiIEhlaWdodD0iMTguOSIgVGV4dD0i0KHRgtGD0LTQtdC90YLRiyIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICA8L1JlcG9ydFRpdGxlQmFuZD4NCiAgICA8UGFnZUhlYWRlckJhbmQgTmFtZT0iUGFnZUhlYWRlcjEiIFRvcD0iNDEuOCIgV2lkdGg9IjcxOC4yIiBIZWlnaHQ9IjI4LjM1Ij4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQyIiBMZWZ0PSI5LjQ1IiBXaWR0aD0iOTQuNSIgSGVpZ2h0PSIxOC45IiBUZXh0PSLQmtC+0LQg0YHRgtGD0LTQtdC90YLQsCIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQzIiBMZWZ0PSIxMTMuNCIgV2lkdGg9Ijk0LjUiIEhlaWdodD0iMTguOSIgVGV4dD0i0KTQmNCeINGB0YLRg9C00LXQvdGC0YsiIEZvbnQ9IkFyaWFsLCAxMHB0Ii8+DQogICAgICA8VGV4dE9iamVjdCBOYW1lPSJUZXh0NCIgTGVmdD0iMjE3LjM1IiBXaWR0aD0iOTQuNSIgSGVpZ2h0PSIxOC45IiBUZXh0PSLQndCw0LfQstCw0L3QuNC1INCz0YDRg9C/0L/RiyIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQ1IiBMZWZ0PSIzMjEuMyIgV2lkdGg9Ijk0LjUiIEhlaWdodD0iMTguOSIgVGV4dD0i0JDQtNGA0LXRgSIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQ2IiBMZWZ0PSI0MjUuMjUiIFdpZHRoPSI5NC41IiBIZWlnaHQ9IjE4LjkiIFRleHQ9ItCi0LXQu9C10YTQvtC9ICIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQ3IiBMZWZ0PSI2MTQuMjUiIFdpZHRoPSI5NC41IiBIZWlnaHQ9IjE4LjkiIFRleHQ9ItCU0LDRgtCwINGA0L7QttC00LXQvdC40Y8iIEZvbnQ9IkFyaWFsLCAxMHB0Ii8+DQogICAgPC9QYWdlSGVhZGVyQmFuZD4NCiAgICA8RGF0YUJhbmQgTmFtZT0iRGF0YTEiIFRvcD0iNzQuMTUiIFdpZHRoPSI3MTguMiIgSGVpZ2h0PSI3NS42IiBEYXRhU291cmNlPSJTdHVkZW50cyI+DQogICAgICA8VGV4dE9iamVjdCBOYW1lPSJUZXh0OCIgTGVmdD0iOS40NSIgVG9wPSI5LjQ1IiBXaWR0aD0iOTQuNSIgSGVpZ2h0PSIxOC45IiBUZXh0PSJbU3R1ZGVudHMuSWRfc3R1ZF0iIEZvbnQ9IkFyaWFsLCAxMHB0Ii8+DQogICAgICA8VGV4dE9iamVjdCBOYW1lPSJUZXh0OSIgTGVmdD0iMTEzLjQiIFRvcD0iOS40NSIgV2lkdGg9Ijk0LjUiIEhlaWdodD0iMTguOSIgVGV4dD0iW1N0dWRlbnRzLkZJT10iIEZvbnQ9IkFyaWFsLCAxMHB0Ii8+DQogICAgICA8VGV4dE9iamVjdCBOYW1lPSJUZXh0MTAiIExlZnQ9IjIxNy4zNSIgVG9wPSI5LjQ1IiBXaWR0aD0iOTQuNSIgSGVpZ2h0PSIxOC45IiBUZXh0PSJbU3R1ZGVudHMuVGl0bGVdIiBGb250PSJBcmlhbCwgMTBwdCIvPg0KICAgICAgPFRleHRPYmplY3QgTmFtZT0iVGV4dDExIiBMZWZ0PSIzMjEuMyIgVG9wPSI5LjQ1IiBXaWR0aD0iOTQuNSIgSGVpZ2h0PSIxOC45IiBUZXh0PSJbU3R1ZGVudHMuQWRkcmVzXSIgRm9udD0iQXJpYWwsIDEwcHQiLz4NCiAgICAgIDxUZXh0T2JqZWN0IE5hbWU9IlRleHQxMiIgTGVmdD0iNDI1LjI1IiBUb3A9IjkuNDUiIFdpZHRoPSI5NC41IiBIZWlnaHQ9IjE4LjkiIFRleHQ9IltTdHVkZW50cy5UZWxdIiBGb250PSJBcmlhbCwgMTBwdCIvPg0KICAgICAgPFRleHRPYmplY3QgTmFtZT0iVGV4dDEzIiBMZWZ0PSI2MTQuMjUiIFRvcD0iOS40NSIgV2lkdGg9Ijk0LjUiIEhlaWdodD0iMTguOSIgVGV4dD0iW1N0dWRlbnRzLkRhdGVfYmlydGhdIiBGb3JtYXQ9IkRhdGUiIEZvcm1hdC5Gb3JtYXQ9ImQiIEZvbnQ9IkFyaWFsLCAxMHB0Ii8+DQogICAgPC9EYXRhQmFuZD4NCiAgPC9SZXBvcnRQYWdlPg0KPC9SZXBvcnQ+DQo=" />
            </div>
        
    </form>
</body>
</html>
