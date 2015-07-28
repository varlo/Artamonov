using System;
using System.Web.UI;

namespace StroyTehNadzor.PageControls
{
    public partial class Header : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Path.IndexOf("Contracts.aspx") > 0)
                    lHeader.Text = "<h2>Формы договоров на лицензированный технадзор(технический надзор) в <br />строительстве, реконструкции, капитальном ремонте зданий и сооружений, <br />адаптированные для различных форм собственности: <br />для предпринимателей, общества с ограниченной ответственностью, госпредприятия</h2>";
                else if (Request.Path.IndexOf("Default.aspx") > 0)
                    lHeader.Text = "<h2>Технадзор (технический надзор) в строительстве <br />жилых, гражданских и производственных объектов</h2>"; 
                else
                    lHeader.Text = "<h2>Технический надзор в строительстве, реконструкции, <br />капитальном ремонте <br />жилых, гражданских и производственных объектов</h2>";
            }
        }
    }
}