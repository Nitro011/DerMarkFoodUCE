using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
using System.Data.SqlClient;
using System.Data;


namespace Capa.Datos
{
   public class Clientes_DA
    {


        public object insertar(Clientes_E ce)
        {

            string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "InsertarCliente";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nacionalidadID", ce.nacionalidad);
                cmd.Parameters.AddWithValue("@nombre", ce.nombre);
                cmd.Parameters.AddWithValue("@apellido", ce.apellido);
                cmd.Parameters.AddWithValue("@celular", ce.celular);


                cmd.Parameters.AddWithValue("@contraseña", ce.contraseña);
                cmd.Parameters.AddWithValue("@correo_electronico", ce.correo_electronico);







                return cmd.ExecuteScalar();

            }


        }

    }
}
