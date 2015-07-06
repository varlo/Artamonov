<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Flaw4.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Flaw4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Монолитный железобетонный пояс под панели перекрытия отсутствует.</title>
    <meta name="Keywords" content="Монолитный железобетонный пояс под панели перекрытия отсутствует" />
    <meta name="Description" content="Монолитный железобетонный пояс под панели перекрытия отсутствует" />
    <link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />
    <style type="text/css">
        a.fancybox img
        {
            border: none;
            box-shadow: 0 1px 7px rgba(0,0,0,0.6);
            -o-transform: scale(1,1);
            -ms-transform: scale(1,1);
            -moz-transform: scale(1,1);
            -webkit-transform: scale(1,1);
            transform: scale(1,1);
            -o-transition: all 0.2s ease-in-out;
            -ms-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            -webkit-transition: all 0.2s ease-in-out;
            transition: all 0.2s ease-in-out;
        }
        a.fancybox:hover img
        {
            position: relative;
            z-index: 999;
            -o-transform: scale(1.03,1.03);
            -ms-transform: scale(1.03,1.03);
            -moz-transform: scale(1.03,1.03);
            -webkit-transform: scale(1.03,1.03);
            transform: scale(1.03,1.03);
        }
        .readmore
        {
            border-radius: 20px;
            -moz-border-radius: 20px;
            -webkit-border-radius: 20px;
            padding: 4px 10px;
            text-align: center;
            text-transform: uppercase;
            border: none;
            outline: none;
            font-size: 10px;
            font-weight: bold;
        }
        .dateCreated
        {
            color: #CCC;
            text-transform: uppercase;
            font-size: 13px;
            font-style: normal;
            font-variant: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <div class="paragraph">
        <div class="dateCreated">
            9 Июля 2015</div>
        <div style="color: #1a8eca;">
            <b style="color: #1a8eca;">Монолитный железобетонный пояс под панели перекрытия</b>.
            Отсутствует.
        </div>
    </div>
    <br />
    <div class="paragraph">
        <p style="float: left; margin-right: 10px;">
            <img src="images/flaw4/1small.jpg" alt="Брак" /></p>
        <span>Монолитный пояс – это элемент конструктива здания предназначенный для увязки несущих
            стен и равномерного распределения на них нагрузки от смонтированных железобетонных
            панелей перекрытия или других конструкций.</span>
    </div>
    <br />
    <div class="paragraph">
        Армирование монолитного пояса еще не принято технадзором, а уже началась заливка
        бетоном. Защитный слой у арматурного каркасы отсутствует. Арматура лежит на кирпиче,
        арматура в каркасе повязана хаотично, не в проектном положении, арматура не заходит
        в тело бетона в местах пересечения каркасов, отсутствует нормативный нахлест арматуры
        в 40 диаметров, местами нахлест стержней арматуры вообще отсутствует.
        <br />
        Проектировщики предвидят подобное и всегда закладываю в проекте "коэффициент спокойного
        сна", но увидев такое качество понимают, что даже их бдительность не спасает.
    </div>
    <br />
    <div class="paragraph">
        <b>Вывод</b>: Гнать исполнителей такого качества. Полный демонтаж такого монолитного
        пояса и устранение брака за счет Генподрядчика. Заказчики, нанимайте грамотных технадзоров
        и прислушиваться к их мнению, как к мнению специалистов. Грамотный технадзор на
        объекте поможет отсечь работу с браком и не допустить выполнение работ с подобным
        качеством. За такое качество надо штрафовать Генподрядчика и лишать его лицензии...
    </div>
    <br />
    <div class="paragraph">
        <img src="images/flaw4/1.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/1.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/2.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/2.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/3.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/3.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/4.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/4.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw4/5.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/5.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/6.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/6.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/7.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/7.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/8.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/8.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw4/9.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/9.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/10.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/10.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/11.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/11.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/12.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/12.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw4/13.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/13.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/14.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/14.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/15.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/15.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/16.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/16.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw4/17.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/17.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/18.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/18.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw4/19.jpg" style="width: 150px; margin: 5px" data-big="images/flaw4/19.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <br />
    <script type="text/javascript">
        $(function ($) {
            var addToAll = false;
            var gallery = true;
            var titlePosition = 'inside';
            $(addToAll ? 'img' : 'img.fancybox').each(function () {
                var $this = $(this);
                var title = $this.attr('title');
                var src = $this.attr('data-big') || $this.attr('src');
                var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
                $this.wrap(a);
            });
            if (gallery)
                $('a.fancybox').attr('rel', 'fancyboxgallery');
            $('a.fancybox').fancybox({
                titlePosition: titlePosition
            });
        });
        $.noConflict();
    </script>
</asp:Content>
