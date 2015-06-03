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
                    lHeader.Text = "<h1>����� ��������� �� ��������������� ���������(����������� ������) � <br />�������������, �������������, ����������� ������� ������ � ����������, <br />�������������� ��� ��������� ���� �������������: <br />��� ����������������, �������� � ������������ ����������������, ��������������</h1>";
                else if (Request.Path.IndexOf("Default.aspx") > 0)
                    lHeader.Text = "<h1>��������� (����������� ������) � ������������� <br />�����, ����������� � ���������������� ��������</h1>"; 
                else
                    lHeader.Text = "<h1>����������� ������ � �������������, �������������, <br />����������� ������� <br />�����, ����������� � ���������������� ��������</h1>";
            }
        }
    }
}