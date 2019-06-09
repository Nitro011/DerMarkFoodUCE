using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa.Entidad;
using Capa.BL;

namespace DerMark.Admin
{
    public partial class index1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
         


        }

        [WebMethod]
        public static object obtenerinfo()
        {
            InformacionUsuario_E ie = new InformacionUsuario_E();
            InformacionUsuario_BL ibl = new InformacionUsuario_BL();




            if (HttpContext.Current.Session["email"].ToString() != null)
            {
                ie.correoelectronico = HttpContext.Current.Session["email"].ToString();
            }

            else
            {
                HttpContext.Current.Response.Redirect("../Pagina_Presentacion/Pagina_Presentacion.aspx");
            }
            

            return ibl.Obtener_Informacion(ie);
          


        }

        [WebMethod]
        public static int Exit()
        {
            HttpContext.Current.Session.Clear();
            HttpContext.Current.Session.Abandon();
            return 1;

        }

        [WebMethod()]
        public static bool KeepActiveSession()
        {
            if (HttpContext.Current.Session["email"] != null)
                return true;
            else
                return false;
        }

        [WebMethod()]
        public static void SessionAbandon()
        {
            HttpContext.Current.Session.Remove("email");
        }


    }
}