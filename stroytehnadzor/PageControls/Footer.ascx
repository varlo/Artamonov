<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="StroyTehNadzor.PageControls.Footer" %>
<table border="0" width="100%">
    <%--    <tr>
        <td>
            <!--finance.ua currency sticker-->
            <noindex>
            <a href="http://finance.ua/" target="_top">
                <img src="http://finance.ua/cgi-bin/fip.cgi?currency=usd/uah&source=nbu&lang=ru"
                    alt="Курсы валют" width="88" height="31" border="0" title="Курсы валют"></a></noindex>
            <!--//finance.ua currency sticker-->
            <br />
            <!--finance.ua currency sticker-->
            <noindex>
            <a href="http://finance.ua/" target="_top">
                <img src="http://finance.ua/cgi-bin/fip.cgi?currency=eur/uah&source=nbu&lang=ru"
                    alt="Курсы валют" width="88" height="31" border="0" title="Курсы валют"></a></noindex>
            <!--//finance.ua currency sticker-->
        </td>
        <td>
            <!-- MyCounter v.2.0 -->
            <script type="text/javascript"><!--
                my_id = 43867;
                my_width = 88;
                my_height = 41;
                my_alt = "MyCounter - счётчик и статистика";
                //--></script>

            <script type="text/javascript" src="http://scripts.mycounter.ua/counter2.0.js">
            </script>

            <noscript>
                <a target="_blank" href="http://mycounter.ua/">
                    <img src="http://get.mycounter.ua/counter.php?id=43867" title="MyCounter - счётчик и статистика"
                        alt="MyCounter - счётчик и статистика" width="88" height="41" border="0" /></a></noscript>
            <!--/ MyCounter -->
            <br />
            <!--LiveInternet counter-->

            <script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='http://counter.yadro.ru/hit?t14.2;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border=0 width=88 height=31><\/a>")//--></script>

            <!--/LiveInternet-->
        </td>
        <td>
            <noindex>
            <a href="http://clck.yandex.ru/redir/dtype=stred/pid=30/cid=1531/*http://maps.yandex.ua/kiev_traffic"
                style="background-image: url(http://clck.yandex.ru/click/dtype=stred/pid=30/cid=1529/*)">
                <img src="http://info.maps.yandex.net/traffic/kiev/current_traffic_234.gif" alt="Пробки на Яндекс.Картах"
                    border="0" /></a> <a href='http://www.gismeteo.ua/towns/33345.htm'></a></noindex>

            <script>URL='http://img.gismeteo.Ua/flash/100x100s.swf?city=33345';w='100';h='100';value='33345';lang='ru'</script>

            <script src='http://informer.gismeteo.Ua/flash/fcode.js'></script>

            <script>URL='http://img.gismeteo.Ua/flash/100x100s.swf?city=33135';w='100';h='100';value='33135';lang='ru'</script>

            <script src='http://informer.gismeteo.Ua/flash/fcode.js'></script>

        </td>
        <td>
            <asp:Literal ID="lCalendar" Visible="false" runat="server"></asp:Literal>
            <!-- Informer www.calend.ru -->
            <noindex>
            <a href="http://www.calend.ru" target="_blank">
                <img src="http://www.calend.ru/img/export/informer.png" width="189" alt="Праздники сегодня"
                    border="0"></a><!-- // Informer www.calend.ru --></noindex>
        </td>
        <td>
            <Controls:Signs runat="server" ID="Signs1" Visible="false" />
        </td>
    </tr>
    --%>
    <tr>
        <td colspan="5">
            <b>27 февраля 2013 года в среду состоялся первый семинар для технадзоров.</b>
            <br />
            по адресу г. Киев, бульвар Л.Украинки, 26.
            <br />
            <b>Личное мнение: </b>Семинар с профессиональной подготовки технадзоров пустой.
            Ожидалось какой-то большей информативности. Такое впечатление, что собрали морально
            подготовить к репрессиям, т.к. пять раз повторили фразу: "Нас обязывают усилить
            инспекционную работу". Это говорит о включении фискального механизма с новой силой.
            Призываю быть зубатыми специалистами, постоянно повышать квалификацию, помогать
            и Заказчикам и строителям, тем самым мы обретем иммунитет против прецедентов к штрафам
            технадзоров.
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <script src="http://odnaknopka.ru/ok3.js" type="text/javascript"></script>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <noindex>
                <a href="http://www.detdom.info/terminovo/artvmonov-yaroslav"
                    title="Собираем на операцию Ярославчику" target="_blank">
                    <img src="images/yaroslav.gif" width="250px" alt="Собираем на операцию Ярославчику"></a>
            </noindex>
        </td>
        <td align="center" colspan="3">
            <noindex>
                <a href="http://www.detdom.info/terminovo/artvmonov-yaroslav" title="Собираем на операцию Ярославчику"
                    target="_blank">
                    <img src="images/detdom.gif" height="30px" alt="Собираем на операцию Ярославчику"></a>
            </noindex>
        </td>
    </tr>
    <%--    <tr>
        <td colspan="5">
            <div id="blackline" style="text-align: center;">
                Сопровождение и поддержка Виктор Ральченко, email:
                <img src="images/emailadmin.gif" alt="" />
                &copy; Киев, 2008</div>
        </td>
    </tr>--%>
</table>
