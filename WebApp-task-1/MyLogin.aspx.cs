using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

            DisplayControl(Page.Controls, 0);
            Response.Write("<hr/>");

            Page.Header.Title = "Структура страницы ASP.NET";
            Page.Header.Description = "Описание возможностей ASP.NET по динамическому использованию элементов на странице";
            Page.Header.Keywords = "C#, .NET, ASP.NET";

            // Подключить обработчик событий Button.Click
            //newButton.Click += dynamicButton_Click;

            Label1.Text = Server.HtmlEncode("Тег <p> используется для обозначения абзаца.");

            //// Закодировать недопустимые символы. 
            //line = Server.HtmlEncode(line);
            //// Заменить пробелы неразрываемыми пробелами. 
            //line = line.Replace(" ", "&nbsp;");

            Trace.IsEnabled = true;
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

            // Поиск кнопки в коллекции Page.Controls
            Button foundButton = (Button)Page.FindControl("newButton");

            // Удаление кнопки
            if (foundButton != null)
                foundButton.Parent.Controls.Remove(foundButton);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblInfo.Text += "Событие Button.Click произошло<br/>";

            //А вот как можно добавить в заголовок другой метадескриптор
            HtmlMeta metaTag = new HtmlMeta();
            metaTag.HttpEquiv = "Content-Type";
            metaTag.Content = "text/html; charset=utf-8";
            Page.Header.Controls.Add(metaTag);

            // Создать новый объект кнопки. 
            Button newButton = new Button();

            // Присвоить некоторый текст и идентификатор для будущего извлечения. 
            newButton.Text = "* Dynamic Button *";
            newButton.ID = "newButton";

            // Добавить кнопку к панели. 
            MainPanel.Controls.Add(newButton);

            // Добавить кнопку в PlaceHolder. 
            //PlaceHolder1.Controls.Add(newButton);
        }

        private void DisplayControl(ControlCollection controls, int depth)
        {
            foreach (Control control in controls)
            {
                // Количество отступов в представлении дерева элементов управления
                Response.Write(new String('-', depth * 4) + "> ");

                // Отобразить элемент управления
                Response.Write(control.GetType().ToString() + " - <b>" +
                  control.ID + "</b><br />");

                if (control.Controls != null)
                {
                    DisplayControl(control.Controls, depth + 1);
                }
            }
        }

        //protected void Application_BeginRequest(object sender, EventArgs e)
        //{
        //    // Веб-приложение больше не содержит страницу about.aspx
        //    if (Reguest.FilePath == "/about.aspx")
        //    {
        //        Response.RedirectPermanent("/about/about-Us.aspx");
        //    }

        //    // (Сюда следует добавить дополнительные перенаправления.) 
        //}

        protected void cmdRemove_Click(object sender, EventArgs e)
        {
            Trace.Write("RemoveButton_Click", "Удаление элемента управления");

            // Поиска кнопки в коллекции Page.Controls
            Button foundButton = (Button)Page.FindControl("newButton");

            // Удаление кнопки. 
            if (foundButton != null)
                foundButton.Parent.Controls.Remove(foundButton);

            Trace.Write("RemoveButton_Click", "Кнопка удалена");
        }
    }
}