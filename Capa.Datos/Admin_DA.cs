using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Capa.Entidad;

namespace Capa.Datos
{
   public class Admin_DA
    {
        public object insertar(Admin_E ae)
        {

            string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "InsertarAdmin";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ciudadID", ae.ciudad);
                cmd.Parameters.AddWithValue("@nacionalidadID", ae.nacionalidad);
                cmd.Parameters.AddWithValue("@paisID", ae.pais);
                cmd.Parameters.AddWithValue("@nombre", ae.nombre);
                cmd.Parameters.AddWithValue("@apellido",ae.apellido);
                cmd.Parameters.AddWithValue("@fecha_de_nacimiento", ae.fecha_de_nacimiento);
                cmd.Parameters.AddWithValue("@descripcion", ae.descripcion);
                cmd.Parameters.AddWithValue("@celular", ae.celular);


                cmd.Parameters.AddWithValue("@contraseña", ae.contraseña);
                cmd.Parameters.AddWithValue("@correo_electronico", ae.correo_electronico);


                cmd.Parameters.AddWithValue("@ciudadIDEmpresa", ae.ciudadEmpresa);
                cmd.Parameters.AddWithValue("@paisIDEmpresa", ae.paisEmpresa);
                cmd.Parameters.AddWithValue("@nombre_de_la_empresa", ae.nombre_de_la_empresa);
                cmd.Parameters.AddWithValue("@direccionEmpresa", ae.direccionEmpresa);
                cmd.Parameters.AddWithValue("@descripcionEmpresa", ae.descripcionEmpresa);
                cmd.Parameters.AddWithValue("@RNCEmpresa", ae.RNCEmpresa);
                cmd.Parameters.AddWithValue("@correo_electronicoEmplesa", ae.correo_electronicoEmpresa);
                cmd.Parameters.AddWithValue("@telefonoEmpresa", ae.telefonoEmpresa);





                return cmd.ExecuteScalar();

            }

           
        }






    }
}
