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


            ie.correoelectronico = HttpContext.Current.Session["email"].ToString();

            return ibl.Obtener_Informacion(ie);
          


        }

        [WebMethod]
        public static int Exit()
        {

            HttpContext.Current.Session.Abandon();
            return 1;

        }


    }
}