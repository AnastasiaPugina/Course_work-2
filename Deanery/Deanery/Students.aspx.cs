using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;
using System.Drawing;
using OfficeOpenXml;
using System.Net;


namespace Deanery
{
    public partial class Students : System.Web.UI.Page
    {
        public static void ProcessExcel()
        {
            using (ExcelPackage excel = new ExcelPackage())
            {
                excel.Workbook.Worksheets.Add("Worksheet1");
                FileInfo excelFile = new FileInfo(@"C:\Users\1\Desktop\Мои Работы\Проектирование ИС\Курсовая работа\test.xlsx");
                var excelWorksheet = excel.Workbook.Worksheets["Worksheet1"];

                var headerRow = new List<string[]>()
                {
                new string[]
                    {
                        "Код студента",
                        "ФИО",
                        "Название группы",
                        "Адрес",
                        "Телефон",
                        "Дата рождения"
                    }
                };

                string headerRange = "A1:" + "F1";

                var worksheet = excel.Workbook.Worksheets["Worksheet1"];

                worksheet.Cells[headerRange].LoadFromArrays(headerRow);

                var cellData = new List<object[]>();


                //foreach (item p in Items)
                //{
                //    object[] ttt = new object[6];
                //    ttt[0] = p.Id_stud;
                //    ttt[1] = p.FIO;
                //    ttt[2] = p.Title;
                //    ttt[3] = p.Adress;
                //    ttt[4] = p.Tel;
                //    ttt[5] = p.Data_birth;
                //    cellData.Add(ttt);
                //}

                excelWorksheet.Cells[2, 1].LoadFromArrays(cellData);
                excel.SaveAs(excelFile);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

    protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
         
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                throw new NotImplementedException("Поле ввода пустое, пожалуйста, чтобы осуществить поиск, введите информацию!");
                
            }
        }
    }
        }