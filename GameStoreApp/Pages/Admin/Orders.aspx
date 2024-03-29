﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="GameStoreApp.Pages.Admin.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="outerContainer">
        <table id="ordersTable">
            <tr>
                <th>Ім'я замовника</th>
                <th>Місто</th>
                <th>Замовлень</th>
                <th>Сума</th>
                <th></th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" SelectMethod="GetOrders"
                ItemType="GameStoreApp.Models.Order">
                <ItemTemplate>
                    <tr>
                        <td><%#: Item.Name %></td>
                        <td><%#: Item.City %></td>
                        <td><%# Item.OrderLines.Sum(ol => ol.Quantity) %></td>
                        <td><%# Total(Item.OrderLines).ToString("C") %> </td>
                        <td>
                            <asp:PlaceHolder ID="PlaceHolder1" Visible="<%# !Item.Dispatched %>" runat="server">
                                <button type="submit" name="dispatch"
                                    value="<%# Item.OrderId %>">
                                    Надіслати в службу підтримки</button>
                            </asp:PlaceHolder>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>

    <div id="ordersCheck">
        <asp:CheckBox ID="showDispatched" runat="server" Checked="false" AutoPostBack="true" />
        Показати відправлені в службу підтримки замовлення?
    </div>
</asp:Content>
