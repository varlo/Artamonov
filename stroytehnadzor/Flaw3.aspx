<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Flaw3.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Flaw3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Защитный слой арматуры каркаса колонн отсутствует.</title>
    <meta name="Keywords" content="Защитный слой арматуры каркаса колонн отсутствует" />
    <meta name="Description" content="Защитный слой арматуры каркаса колонн отсутствует" />
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
            7 Июля 2015</div>
        <div style="color: #1a8eca;">
            <b style="color: #1a8eca;">Защитный слой арматуры каркаса колонн. Отсутствует. Применение
                сварки не по назначению.</b></div>
    </div>
    <br />
    <div class="paragraph">
        <p style="float: left; margin-right: 10px;">
            <img src="images/flaw3/1small.jpg" alt="Брак" /></p>
        <span>На фото приведены колонны, где рабочая арматура не попадает в тело колонны и не
            имеет защитного слоя, перерезана болгаркой, или пережжена сваркой. Выполнить работу
            с браком элементарно, вот как устранить этот брак - большой вопрос? Часто это сложнее
            самого производства работ.</span>
    </div>
    <br />
    <div class="paragraph">
        Как пытаются выйти с положения “умелые” строители? Выполняются надрезы в арматуре,
        перерезая 2/3 стержня, арматура гнется, потом надрезы завариваются, арматурный каркас
        быстро закрывается опалубкой. В отдельных случаях арматуру греют сваркой и отгибают
        в проектное положение. Но, если сварка не предусмотрена проектом, то это нарушение.
        В данном случае в местах сварки образуются “концентраторы напряжения”, арматура
        меняет свой химический состав и становится более хрупкой. У какого иностранного
        строителя хватит ума так не уважать себя и качество конечной строительной продукции?
        На всех строительных площадках, которые курируют иностранцы и на которых мне доводилось
        бывать при аналогичных стройках, сварочные аппараты на объекте запрещены.
    </div>
    <br />
    <div class="paragraph">
        <b>Вывод</b>: И в том и в другом случае это брак влияющий на несущую способность
        каркаса здания. Такие конструкции не отвечают заложенным проектным требованиям.
        Все отклонения от проекта необходимо согласовывать с конструктором, проводить усиление
        данных мест. Второй вывод - очень важно постоянно повышать строительную грамотность
        бригадиров и производителей работ.
    </div>
    <br />
    <div class="paragraph">
        <img src="images/flaw3/1.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/1.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/2.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/2.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/3.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/3.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/4.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/4.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw3/5.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/5.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/6.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/6.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/7.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/7.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/8.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/8.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw3/9.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/9.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/10.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/10.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/11.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/11.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/12.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/12.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw3/13.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/13.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/14.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/14.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/15.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/15.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/16.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/16.jpg"
            class="fancybox" alt="Брак" title="Брак" />
    </div>
    <div class="paragraph">
        <img src="images/flaw3/17.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/17.jpg"
            class="fancybox" alt="Брак" title="Брак" />
        <img src="images/flaw3/18.jpg" style="width: 150px; margin: 5px" data-big="images/flaw3/18.jpg"
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
