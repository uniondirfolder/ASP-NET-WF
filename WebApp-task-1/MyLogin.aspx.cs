using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_task_1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblInfo.Text += "Событие Page.Load произошло<br/>";
            if (Page.IsPostBack)
                lblInfo.Text += "<b>Страница загружена не в первый раз.</b><br/>";
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            lblInfo.Text += "Событие Page.Init произошло<br/>";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            lblInfo.Text += "Событие Page.PreRender произошло<br/>";
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            // Этот текст никогда не отображается, поскольку к этому 
            // моменту весь HTML-код для страницы уже сгенерирован. 
            lblInfo.Text += "Событие Page.Unload произошло<br/>";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblInfo.Text += "Событие Button.Click произошло<br/>";
        }
    }
}