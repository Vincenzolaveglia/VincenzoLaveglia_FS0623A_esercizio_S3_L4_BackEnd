<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/BaseTemplate.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Concessionaria.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <form runat="server">
        <div class="container">
            <h2>Acquista l'auto dei tuoi sogni</h2>
            <asp:DropDownList ID="carModels" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCarModels_SelectedIndexChanged" CssClass="mb-3">
                <asp:ListItem Text="Seleziona..." Value="0"></asp:ListItem>
                <asp:ListItem Text="Ferrari F8 Tributo" Value="1"></asp:ListItem>
                <asp:ListItem Text="Lamborghini Huracan" Value="2"></asp:ListItem>
                <asp:ListItem Text="Bugatti Chiron" Value="3"></asp:ListItem>
                <asp:ListItem Text="AlfaRomeo Tonale" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <div class="image-container" id="carImage" runat="server"></div>

            <h3 class="mt-3">Optional:</h3>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional1" runat="server" Text="Pacchetto di upgrade dell'audio (+€800)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional2" runat="server" Text="Cerchi in lega (+€600)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional3" runat="server" Text="Tetto panoramico(€1200)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional4" runat="server" Text="Sedili riscaldati(+€500)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional5" runat="server" Text="Sensori di parcheggio(+€300)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional6" runat="server" Text="Sistema di illuminazione a LED(+€600)" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cbOptional7" runat="server" Text="Sistema di assistenza alla guida(+€1200)" />
            </div>



            <h3 class="mt-3">Garanzia: </h3>
            <asp:DropDownList ID="garanzia" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleziona..." Value="null"></asp:ListItem>
                <asp:ListItem Text="0 anni" Value="0"></asp:ListItem>
                <asp:ListItem Text="1 anno" Value="1"></asp:ListItem>
                <asp:ListItem Text="2 anni" Value="2"></asp:ListItem>
                <asp:ListItem Text="3 anni" Value="3"></asp:ListItem>
                <asp:ListItem Text="4 anni" Value="4"></asp:ListItem>
                <asp:ListItem Text="5 anni" Value="5"></asp:ListItem>
            </asp:DropDownList>

            <br />
            <asp:Button ID="btnCalcolaPreventivo" runat="server" Text="Calcola Preventivo" OnClick="btnCalcolaPreventivo_Click" class="btn btn-primary" />

        </div>
        <div class="container">
            <div class="text-center mt-3 mb-3">
                <asp:Label ID="lblPreventivo" runat="server"></asp:Label><br />
                <div class="image-container" id="carImagePreventivo" runat="server"></div>
                <div class="row justify-content-center">
                    <asp:Label ID="lblPrezzoBase" runat="server" CssClass="d-block text-left"></asp:Label>
                    <asp:Label ID="lblPrezzoOptional" runat="server" CssClass="d-block text-left"></asp:Label>
                    <asp:Label ID="lblPrezzoGaranzia" runat="server" CssClass="d-block text-left"></asp:Label>
                    <asp:Label ID="lblPrezzoTotale" runat="server" CssClass="d-block text-left"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
