<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Engineer.aspx.cs" MasterPageFile="Front.Master"
    Inherits="Stroytehnadzor.Engineer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHeader" runat="server">
    <title>Страничка инжененера технадзора.</title>
    <meta name="Keywords" content="Цель задача обязанности функции инженера технадзора в строительстве, должностная инструкция технадзора, предоставление услуг технического надзора в строительстве, профессия технадзор, ответственность технадзора" />
    <meta name="Description" content="Страничка инжененера технического надзора в строительстве" />
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
    <h3>
        Страничка инжененера технадзора:</h3>
    <div class="paragraph">
        Как гласит народный эпос: "Ведро воды по калорийности заменяет стакан сметаны".</div>
    <br />
    <div class="paragraph">
        В экстремальных ситуациях, смекалка конечно плюс, но в повседневной практике отнюдь.
        Потому как не важно, что уложили не совсем то, сделали не совсем так, в случаях,
        когда у нас где-то чего-то не хватает, мы по-быстрому находим замену. Важно, что
        построили и отрапортовали, а потом выявляются недостатки, брак, строение кренится,
        рушится, падает, и героическими усилиями затыкается очередной провал. Так было,
        так есть, и, к сожалению, так продолжалось бы.</div>
    <br />
    <div class="paragraph">
        В связи с изменением законодательства - аттестацией инженеров технического надзора,
        удастся избежать многих строительных рисков касающихся качества строительной продукции.
        Грамотный аттестованный инженер технадзора экономит нервы, время и деньги Заказчика,
        несет персональную ответственность в соответствии с Украинским законодательством
        за возводимое сооружение.</div>
    <br />
    <div class="paragraph">
        <img src="images/smiletehno.gif" height="30" border="0">&nbsp;Технадзор оказывает
        помощь Заказчику нести наименьшие затраты как в процессе строительства, так и в
        дальнейшей эксплуатации и портит репутацию подрядчикам - задачи серьезные и ответственные.</div>
    <br />
    <div class="paragraph">
        К чему может привести низкая квалификация строителей и отсутствие технадзора на
        объекте?
    </div>
    <br />
    <div class="paragraph">
        <div class="dateCreated">
            4 Июль 2015</div>
        <div style="color: #1a8eca;">
            <b style="color: #1a8eca;">Защитный слой арматуры</b>. Отсутствует.</div>
    </div>
    <br />
    <div class="paragraph">
        <p style="float: left; margin-right: 10px;"><img src="images/1small.jpg" alt="Брак"/></p>
        <span>
        Проектным решением под фундаментную плиту дома не предусмотрено устройство основания
        из подбетонки или пролитого битумом уплотненного щебеночного основания. Проектом
        предусмотрена пленка. На основании какого норматива? Это вопрос к проектировщикам.
        По проекту защитный слой нижней арматуры от основания фундаментной плиты до оси
        нижнего стержня равен 50мм. Для соблюдения защитного слоя арматуры применены фишки(фиксаторы)
        30мм. Что получилось?
        <input type="button" class="readmore" value="Подробнее..." onclick="onDetailsClick()" /></span>
    </div>
    <br />
    <div id="details" style="display: none">
        <div class="paragraph">
            Фактически защитного слоя нет еще до заливки бетона. При использовании фишек 30мм
            УЖЕ не получается защитный слой 50мм. Строители повязали каркасы нижней и верхней
            сетки. Под нижнюю сетку установили фишки 30мм в количестве 5шт/м2. При жестком основании
            количества фишек достаточно. При устройстве фундаментов по щебню необходимо пользоваться
            технологическими картами “устройство полов по грунту”, т.е. фишки должны быть не
            менее 70мм с учетом вдавливания в щебень, чтоб получить защитный слой 50мм. Это
            действительно серьезный брак.
        </div>
        <br />
        <div class="paragraph">
            <b>Последствия</b>: Фундаментная плита не выполняет прочностные требования. Нарушение
            проекта. Появляется риск разрушения здания от не надежного фундамента.
        </div>
        <br />
        <div class="paragraph">
            <img src="images/1.jpg" style="width: 150px; margin: 5px" data-big="images/1.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/2.jpg" style="width: 150px; margin: 5px" data-big="images/2.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/3.jpg" style="width: 150px; margin: 5px" data-big="images/3.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/4.jpg" style="width: 150px; margin: 5px" data-big="images/4.jpg"
                class="fancybox" alt="Брак" title="Брак" />
        </div>
        <div class="paragraph">
            <img src="images/5.jpg" style="width: 150px; margin: 5px" data-big="images/5.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/6.jpg" style="width: 150px; margin: 5px" data-big="images/6.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/7.jpg" style="width: 150px; margin: 5px" data-big="images/7.jpg"
                class="fancybox" alt="Брак" title="Брак" />
            <img src="images/8.jpg" style="width: 150px; margin: 5px" data-big="images/8.jpg"
                class="fancybox" alt="Брак" title="Брак" />
        </div>
        <br />
    </div>
    <h3>
        Услуги по осуществлению функций технического надзора:</h3>
    <ol>
        <li>Регистрация, подписка в ГАСК при получении "Разрешения на начало строительства".</li>
        <li>Контроль качества работ (соблюдение требований СНиП, государственных стандартов
            (ДБН), технологии производства работ).</li>
        <li><b>Технадзор</b> над соответствием выполняемых строительно-монтажных работ и применяемых
            материалов, изделий, конструкций и оборудования утвержденным проектным решениям.</li>
        <li>Приемка выполненных работ с подписанием соответствующих актов (скрытых работ, испытаний,
            промежуточной приемки ответственных конструкций зданий и сооружений).</li>
        <li><b>Технадзор</b> и Фотофиксация: скрытых и других работ, текущего состояния объекта.
            Предоставление результатов, как в печатном, так и в электронном виде.</li>
        <li>Фиксация выявленных при осмотре выполненных работ отклонений от рабочих чертежей,
            от технологии производства строительных работ, от действующих СНиП, ГОСТ, ДБН, в
            журнале производства работ, а также определение сроков устранения обнаруженных отклонений.</li>
        <li>Проверка соответствия объемов фактически выполненных работ и предъявляемых к оплате.</li>
        <li>Контроль соответствия объемов работ и сроков работ условиям договора и календарному
            графику строительства.</li>
        <li>Ведение накопительной ведомости по выполняемым объемам работ.</li>
        <li><b>Технадзор</b> (комплектности) и правильности ведения исполнительной документации,
            в том числе оценку достоверности геодезических исполнительных схем выполненных конструкций
            с выборочным контролем точности положения элементов. Подготовка замечаний и контроль
            их устранения.</li>
        <li>Составление перечней необходимой исполнительной документации по видам работ.</li>
        <li>Проверка наличия у исполнителя работ документов о качестве на применяемые им материалы,
            изделия и оборудование.</li>
        <li>Ведение входного контроля проектной документации. Подготовка замечаний и контроль
            их устранения.</li>
        <li>Контроль исполнения предписаний органов государственного надзора и местного самоуправления.</li>
        <li>Участие в совещаниях по строительству и проектированию объекта.</li>
    </ol>
    <h3>
        Дополнительные услуги по работе с исполнительной документацией:</h3>
    <ol>
        <li>Предоставление бланков документов в печатном виде (актов скрытых работ, актов испытаний,
            актов на доп. работы, актов передачи объекта, дефектных ведомостей и т.д.). Индивидуальные
            акты для облегчения работы по оформлению (в акте уже будет вписано: наименование
            объекта, название организаций, Ф.И.О. лиц подписывающих акт и т.п.).</li>
        <li>Проверка качества исполнительной документации (комплектность и правильность ее ведения).</li>
        <li>Разработка требований по оформлению, составу, исполнительной документации.</li>
        <li>Составление перечней необходимой исполнительной документации по видам работ.</li>
        <li>Консультации по вопросам исполнительной документации (что записать в договор, порядок
            сдачи исполнительной документации, какое количество экз. необходимо, основание для
            подготовки и т.п.).</li>
        <li>Контроль за ведением исполнительной документации во время всего периода строительства.</li>
        <li>Ведение (получение от субподрядчиков, от Генподрядчика; проверка, комплектование
            по разделам в соответствующие папки с составлением реестров) исполнительной документации
            и подготовка для передачи Заказчику полного комплекта.</li>
        <li>Помощь в восстановлении исполнительной документации (журналов работ, актов скрытых
            работ и т.д.).</li>
    </ol>
    <h3>
        Дополнительно:</h3>
    <ol>
        <li>Ввод объекта в эксплуатацию.</li>
    </ol>
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
    <script type="text/javascript">
        function onDetailsClick() {
            $('#details').toggle();
        }
    </script>
</asp:Content>
