﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="GameStoreApp.Pages.Admin.Games" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" ItemType="GameStoreApp.Models.Game" SelectMethod="GetGames"
        DataKeyNames="GameId" UpdateMethod="UpdateGame" DeleteMethod="DeleteGame"
        InsertMethod="InsertGame" InsertItemPosition="LastItem" EnableViewState="false"
        runat="server">
        <LayoutTemplate>
            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                        <th>Назва гри</th>
                        <th>Опис</th>
                        <th>Категорія</th>
                        <th>Ціна</th>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Item.Name %></td>
                <td class="description"><span><%# Item.Description %></span></td>
                <td><%# Item.Category %></td>
                <td><%# Item.Price.ToString("c") %></td>
                <td>
                    <asp:Button ID="Button1" CommandName="Edit" Text="Змінити" runat="server" />
                    <asp:Button ID="Button2" CommandName="Delete" Text="Видалити" runat="server" />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <input name="name" value="<%# Item.Name %>" />
                    <input type="hidden" name="ProductID" value="<%# Item.GameId %>" />
                </td>
                <td>
                    <input name="description" value="<%# Item.Description %>" /></td>
                <td>
                    <input name="category" value="<%# Item.Category %>" /></td>
                <td>
                    <input name="price" value="<%# Item.Price %>" /></td>
                <td>
                    <asp:Button ID="Button3" CommandName="Update" Text="Оновити" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" Text="Відміна" runat="server" />
                </td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <input name="name" />
                    <input type="hidden" name="ProductID" value="0" />
                </td>
                <td>
                    <input name="description" /></td>
                <td>
                    <input name="category" /></td>
                <td>
                    <input name="price" /></td>
                <td>
                    <asp:Button ID="Button5" CommandName="Insert" Text="Вставити" runat="server" />
                </td>
            </tr>
        </InsertItemTemplate>
    </asp:ListView>


</asp:Content>
