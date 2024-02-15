using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inizializzazione della pagina
                carImage.InnerHtml = ""; // L'immagine dell'auto viene inizializzata come vuota
            }
        }
        protected void ddlCarModels_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Aggiornamento dell'immagine dell'auto in base alla selezione del modello
            int selectedCar = Convert.ToInt32(carModels.SelectedValue);
            string imageUrl = GetCarImageUrl(selectedCar);
            carImage.InnerHtml = "<img src='" + imageUrl + "' alt='Immagine auto' />";
        }

        protected void btnCalcolaPreventivo_Click(object sender, EventArgs e)
        {
            int carPrice = GetCarPrice(Convert.ToInt32(carModels.SelectedValue));
            int optionalPrice = CalculateOptionalPrice();
            int warrantyPrice = Convert.ToInt32(garanzia.SelectedValue) * 120;
            int totalPrice = carPrice + optionalPrice + warrantyPrice;
            int selectedCar = Convert.ToInt32(carModels.SelectedValue);
            string imageUrl = GetCarImageUrl(selectedCar);
            carImagePreventivo.InnerHtml = "<img src='" + imageUrl + "' alt='Immagine auto' />";

            lblPreventivo.Text = "<h3>Preventivo:</h3>";
            lblPrezzoBase.Text = "Prezzo base: €" + carPrice;
            lblPrezzoOptional.Text = "Totale optional: €" + optionalPrice;
            lblPrezzoGaranzia.Text = "Totale garanzia: €" + warrantyPrice;
            lblPrezzoTotale.Text = "Totale complessivo: €" + totalPrice;
        }

        private int GetCarPrice(int carId)
        {
            switch (carId)
            {
                case 1:
                    return 80000;
                case 2:
                    return 75000;
                case 3:
                    return 90000;
                case 4:
                    return 15000;
                default:
                    return 0;
            }
        }
        private string GetCarImageUrl(int carId)
        {
            switch (carId)
            {
                case 1:
                    return "data:image/jpeg;base64,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";
                case 2:
                    return "https://tse4.mm.bing.net/th?id=OIP.UUdTY8EamOd94VZzfC0uQgHaEo&pid=Api&P=0&h=180";
                case 3:
                    return "https://tse3.mm.bing.net/th?id=OIP.-r0x0ht6944PPomCRm6dYwHaE6&pid=Api&P=0&h=180";
                case 4:
                    return "https://tse2.mm.bing.net/th?id=OIP.-XZXwtyq_DN5h_S_Dn7HzwHaD5&pid=Api&P=0&h=180";
                default:
                    return "null";
            }
        }

        private int CalculateOptionalPrice()
        {
            int optionalPrice = 0;
            if (cbOptional1.Checked)
            {
                optionalPrice += 800;
            }
            if (cbOptional2.Checked)
            {
                optionalPrice += 600;
            }
            if (cbOptional3.Checked)
            {
                optionalPrice += 1200;
            }
            if (cbOptional4.Checked)
            {
                optionalPrice += 500;
            }
            if (cbOptional5.Checked)
            {
                optionalPrice += 300;
            }
            if (cbOptional6.Checked)
            {
                optionalPrice += 600;
            }
            if (cbOptional7.Checked)
            {
                optionalPrice += 1200;
            }
            return optionalPrice;
        }
    }
}