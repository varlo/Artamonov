<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RightMenu.ascx.cs" Inherits="StroyTehNadzor.PageControls.RightMenu" %>
<table cellpadding="0" cellspacing="0">
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow0" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Engineer.aspx">ФОТО,&nbsp;Блог<br />
                &nbsp;&nbsp;статей&nbsp;технадзора</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow1" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Links.aspx">Полезные&nbsp;ссылки</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow2" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Acts.aspx">Бланки&nbsp;актов</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow3" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Contracts.aspx">Типовой&nbsp;договор<br />
                &nbsp;&nbsp;&nbsp;на&nbsp;технадзор</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right" width="25px">
            <asp:Literal ID="lArrow4" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/ExtExp.aspx">Опыт&nbsp;других&nbsp;стран</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow5" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Geodesy.aspx">Геодезическое<br />
                &nbsp;&nbsp;&nbsp;сопровождение<br />
                &nbsp;&nbsp;&nbsp;объектов</a>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow6" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" href="/Board.aspx">Полезные<br />
                &nbsp;&nbsp;&nbsp;объявления</a>
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow7" runat="server"></asp:Literal>
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        <a class="menu" href="/Humor.aspx">Юмор</a>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <img src="images/smiletehno.gif" height="30" border="0" alt="" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr height="50px">
        <td align="right">
            <asp:Literal ID="lArrow8" runat="server"></asp:Literal>
        </td>
        <td>
            <a class="menu" target="blank" href="http://forum.stroytehnadzor.com.ua">ФОРУМ технадзоров</a>
        </td>
    </tr>
</table>
<br />
<img src="/images/geodezy.jpg" id="imgGeodezy" runat="server" />
<br />
<asp:PlaceHolder ID="phPartners" runat="server"><span style="font-size: 13px"><u><b>
    Партнеры</b></u></span><br />
    <div class="paragraph">
        <br />
        Дома из дерева и камня<br />
        <noindex><a href="out.aspx?link=http://kdd.net.ua" target="_blank"><img src="/images/kdd.jpg" width="160px" alt="Дома из дерева и камня" /></a></noindex>
        <br />
        <br />
        Гидроизоляционные работы<br />
        любой сложности<br />
        <noindex><a href="out.aspx?link=http://www.novemisto.prom.ua" target="_blank"><img src="/images/newcity.jpg" width="160px" alt="Нове мисто" /></a></noindex>
        <br />
        <br />
        Генпроектирование, Генподряд,<br />
        проектирование и монтаж БМЗ<br />
        <noindex><a href="out.aspx?link=http://www.azbi.ua" target="_blank"><img src="/images/azbi.gif" width="160px" alt="Азби" /></a></noindex>
    </div>
</asp:PlaceHolder>
<br />
<table cellpadding="0" cellspacing="0">
    <tr>
        <td align="center">
            <noindex>
            <a href="out.aspx?link=http://clck.yandex.ru/redir/dtype=stred/pid=30/cid=1531/*http://maps.yandex.ua/kiev_traffic"
                style="background-image: url(http://clck.yandex.ru/click/dtype=stred/pid=30/cid=1529/*)" target="_blank">
                <img src="http://info.maps.yandex.net/traffic/kiev/current_traffic_234.gif" width="200px" alt="Пробки на Яндекс.Картах"
                    border="0" /></a> <a href='out.aspx?link=http://www.gismeteo.ua/towns/33345.htm'></a></noindex>
        </td>
    </tr>
    <tr>
        <td align="center">
            <!-- Informer www.calend.ru -->
            <noindex>
            <a href="out.aspx?link=http://www.calend.ru" target="_blank">
                <img src="http://www.calend.ru/img/export/informer.png" width="160" alt="Праздники сегодня"
                    border="0"></a><!-- // Informer www.calend.ru --></noindex>
        </td>
    </tr>
    <tr>
        <td align="center">
            <div id="SinoptikInformer" style="width: 160px;" class="SinoptikInformer type4c1">
                <div class="siHeader">
                    <div class="siLh">
                        <div class="siMh">
                            <a onmousedown="siClickCount();" href="http://sinoptik.ua/" target="_blank">Погода</a><a
                                onmousedown="siClickCount();" class="siLogo" href="http://sinoptik.ua/" target="_blank"><img
                                    alt="Прогноз погоды" src="http://informers.sinoptik.ua/img/t.gif" /></a>
                        </div>
                    </div>
                </div>
                <div class="siBody">
                    <div class="siTitle">
                        <span id="siHeader"></span>
                    </div>
                    <div class="siCity">
                        <div class="siCityName">
                            <a onmousedown="siClickCount();" href="http://sinoptik.ua/погода-киев" target="_blank">
                                Погода в <span>Киеве</span></a></div>
                        <div id="siCont1" class="siBodyContent">
                            <div class="siLeft">
                                <div class="siTerm">
                                </div>
                                <div class="siT" id="siT1">
                                </div>
                                <div id="weatherIco1">
                                </div>
                            </div>
                            <div class="siInf">
                                <p>
                                    влажн.: <span id="vl1"></span>
                                </p>
                                <p>
                                    давл.: <span id="dav1"></span>
                                </p>
                                <p>
                                    ветер: <span id="wind1"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="siFooter">
                    <div class="siLf">
                        <div class="siMf">
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript" charset="UTF-8" src="http://informers.sinoptik.ua/js3.php?title=2&amp;wind=1&amp;cities=303028915,303010783&amp;lang=ru"></script>
        </td>
    </tr>
    <tr>
        <td align="center">
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
                document.write("<a href='out.aspx?link=http://www.liveinternet.ru/click' " +
"target=_blank><img src='http://counter.yadro.ru/hit?t14.2;r" +
escape(document.referrer) + ((typeof (screen) == "undefined") ? "" :
";s" + screen.width + "*" + screen.height + "*" + (screen.colorDepth ?
screen.colorDepth : screen.pixelDepth)) + ";u" + escape(document.URL) +
";" + Math.random() +
"' alt='' title='LiveInternet: показано число просмотров за 24" +
" часа, посетителей за 24 часа и за сегодня' " +
"border=0 width=88 height=31><\/a>")//--></script>
            <!--/LiveInternet-->
        </td>
    </tr>
</table>
