<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GameStoreApp.Pages.Checkout"
    MasterPageFile="~/Pages/Store.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">

        <div id="checkoutForm" class="checkout" runat="server">
            <h2>Оформити замовлення</h2>
            Будь ласка, введіть свої дані, і ми відправимо Ваш товар прямо зараз!

        <div id="errors" data-valmsg-summary="true">
            <ul>
                <li style="display:none"></li>
            </ul>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>

            <h3>Замовник</h3>
            <div>
                <label for="name">І'мя:</label>
                <%--<input id="name" name="name" data-val="true" data-val-required="Введіть ім'я" />--%>
                <SX:VInput Property="Name" runat="server" />
            </div>

            <h3>Адреса доставки</h3>
            <div>
                <label for="line1">Адреса 1:</label>
                <%--<input id="line1" name="line1" />--%>
                <SX:VInput Property="Line1" runat="server" />
            </div>
            <div>
                <label for="line2">Адреса 2:</label>
                <%--<input id="line2" name="line2" />--%>
                <SX:VInput Property="Line2" runat="server" />
            </div>
            <div>
                <label for="line3">Адреса 3:</label>
                <%--<input id="line3" name="line3" />--%>
                <SX:VInput Property="Line3" runat="server" />
            </div>
            <br />
            <div>
                <label for="city">Місто:</label>
                <%--<input id="city" name="city" />--%>
                <SX:VInput Property="City" runat="server" />
            </div>

            <h3>Деталі замовлення</h3>
            <input type="checkbox" id="giftwrap" name="giftwrap" value="true" />           
            Використовувати подарункову упаковку?
        
        <p class="actionButtons">
            <button class="actionButtons" type="submit">Обробити замовлення</button>
        </p>
        </div>
        <div id="checkoutMessage" runat="server">
            <h2>Дякуємо!</h2>
            Дякую що вибрали наш магазин! Ми постараємося максимально швидко відправити ваше замовлення  
        </div>
    </div>
</asp:Content>