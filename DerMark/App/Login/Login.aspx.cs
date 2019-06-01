using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa.BL;
using Capa.Entidad;
namespace DerMark.App.Login
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        [WebMethod]
        public static object loguearse(string correo_electronico,  string contraseña)
        {

           

            Usuarios_BL bc = new Usuarios_BL();


            Usuarios_E ue = new Usuarios_E();

           

            ue.correo_electronico = correo_electronico;
          
            ue.contraseña = contraseña;



           HttpContext.Current.Session["email"] = correo_electronico;

            return bc.loguearse(ue);


        }

    }
}