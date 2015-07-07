<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Flaw1.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Flaw1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Защитный слой арматуры нижней сетки фундаментной плиты отсутствует.</title>
    <meta name="Keywords" content="Защитный слой арматуры нижней сетки фундаментной плиты отсутствует" />
    <meta name="Description" content="Защитный слой арматуры нижней сетки фундаментной плиты отсутствует" />
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
            4 Июля 2015</div>
        <div style="color: #1a8eca;">
            <b style="color: #1a8eca;">Защитный слой арматуры нижней сетки фундаментной плиты. Отсутствует.</b></div>
    </div>
    <br />
    <div class="paragraph">
        <p style="float: left; margin-right: 10px;">
            <img src="images/flaw1/1small.jpg" alt="Брак" /></p>
        <span>Проектным решением под фундаментную плиту дома не предусмотрено устройство основания
            из подбетонки или пролитого битумом уплотненного щебеночного основания. Проектом
            предусмотрена пленка. На основании какого норматива? Это вопрос к проектировщикам.
            По проекту защитный слой нижней арматуры от основания фундаментной плиты до оси
            нижнего стержня равен 50мм. Для соблюдения защитного слоя арматуры применены фишки(фиксаторы)
            30мм. Что получилось? </span>
    </div>
    <br />
    <div class="paragraph">
        Фактически защитного слоя нет еще до заливки бетона. При использовании фишек 30мм
        УЖЕ не получается защитный слой 50мм. Строители повязали каркасы нижней и верхней
        сетки. Под нижнюю сетку установили фишки 30мм в количестве 5шт/м2. При жестком основании
        количество фишек достаточное. Но, при устройстве фундаментов по щебню необходимо
        пользоваться технологическими картами “устройство полов по грунту”, т.е. фишки должны
        быть не менее 70мм с учетом вдавливания в щебень, чтоб получить защитный слой 50мм.
        Это действительно серьезный брак.
    </div>
    <br />
    <div class="paragraph">
        <b>Последствия</b>: Фундаментная плита не выполняет прочностные требования. Нарушение
        проекта. Появляется риск разрушения здания от не надежного фундамента.
    </div>
    <br />
    <div class="paragraph">
        <img src="images/flaw1/1.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/1.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/2.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/2.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/3.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/3.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/4.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/4.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw1/5.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/5.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/6.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/6.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/7.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/7.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw1/8.jpg" style="width: 150px; margin: 5px" data-big="images/flaw1/8.jpg"
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