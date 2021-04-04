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
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;


namespace Deanery
{
    
    public class item
    {
        public string ID_stud;
        public string FIO;
        public string Title;
        public string Adress;
        public string Tel;
        public string Data_birth;
    }

    public partial class Students : System.Web.UI.Page
    {
        new static List<item> Items;
        static List<string> ProcFiles = new List<string>();
        static List<string> UnProcFiles = new List<string>();

        

        public static void ProcessFile(string fileName)
        {

        }


        public static void ProcessDirectory(string targetDirectory)
        {
            string[] fileEntries = Directory.GetFiles(targetDirectory, "*.xl*");
            foreach (string fileName in fileEntries)
                try
                {
                    ProcessFile(fileName);
                    ProcFiles.Add(fileName);
                }
                catch
                {
                    UnProcFiles.Add(fileName);
                }
        }

        public static void ProcessExcel()
        {
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            using (var excel = new ExcelPackage(new FileInfo(@"C:\Users\1\Desktop\Мои Работы\Проектирование ИС\Курсовая работа\test.xlsx")))
            {
                excel.Workbook.Worksheets.Add("Worksheet1");
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

                //Рабочий код

                    item test = new item();
                    test.ID_stud = "1";
                    test.FIO = "2";
                    test.Title = "3";
                    test.Adress = "4";
                    test.Tel = "5";
                    test.Data_birth = "6";

                    Items.Add(test);
                
                    //Конец рабочего кода

                    //DataTable dt = new DataTable();
                    //SqlConnection con = new SqlConnection("Data Source=LAPTOP-T84FSED9\\SQLEXPRESS;Initial Catalog=DB_Deanery;Integrated Security=True");
                    //SqlDataAdapter ad = new SqlDataAdapter("SELECT * FROM Students", con);
                    //ad.Fill(dt);

                    //int j = 6;


                    //    for (int i=0; i <= 6; i++)
                    //    {
                    //        item test = new item();
                    //        test.ID_stud = Items[0].ToString();
                    //        test.FIO = Items[1].ToString();
                    //        test.Title = Items[2].ToString();
                    //        test.Adress = Items[3].ToString();
                    //        test.Tel = Items[4].ToString();
                    //        test.Data_birth = Items[5].ToString();

                    //        Items.Add(test);

                    //        i++;

                    //    }



                    string headerRange = "A1:" + "F1";

                    var worksheet = excel.Workbook.Worksheets["Worksheet1"];

                    worksheet.Cells[headerRange].LoadFromArrays(headerRow);

                    var cellData = new List<object[]>();


                    foreach (item p in Items)

                    {
                        object[] ttt = new object[6];
                        ttt[0] = p.ID_stud;
                        ttt[1] = p.FIO;
                        ttt[2] = p.Title;
                        ttt[3] = p.Adress;
                        ttt[4] = p.Tel;
                        ttt[5] = p.Data_birth;
                        cellData.Add(ttt);

                    }


                    excelWorksheet.Cells[2, 1].LoadFromArrays(cellData);
                    //   excelWorksheet.Cells[3, 1].LoadFromArrays(cellData);
                    //   excelWorksheet.Cells[4, 1].LoadFromArrays(cellData);

                    excel.Save();
                
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
            string targetDirectory = @"C:\Users\1\Desktop\Мои Работы\Проектирование ИС\Курсовая работа\";
            Items = new List<item>();
            ProcessDirectory(targetDirectory);
            ProcessExcel();

           
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