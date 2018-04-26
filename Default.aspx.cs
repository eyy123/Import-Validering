using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.OleDb;
using System.Web.UI.HtmlControls;




public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
        String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();
        OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
        OleDbDataAdapter da = new OleDbDataAdapter();
        da.SelectCommand = cmd;
        DataSet dt = new DataSet();
        da.Fill(dt);
        Gridview1.DataSource = dt.Tables[0];
        dt.Tables[0].Columns.Add("Radnummer");
        Gridview1.DataBind();
        mycon.Close();

    }

    //Lägger till id på varje rad (inte kolumn) dock bara i cell 6 (oandvändbart i dokument som har mindre än 5 kolumner)

    //protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)  
    //{
    //    {
    //        int yourvalue = 0;
    //        int counter = 0;
    //        foreach (GridViewRow oItem in Gridview1.Rows)
    //        {
    //            counter++;
    //            yourvalue++;
    //            oItem.Cells[6].Text = counter.ToString();
    //            oItem.Attributes.Add("id", yourvalue.ToString());

    //        }

    //    }

    //}
}

  

   




