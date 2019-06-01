using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
namespace Capa.Datos
{
   public class ObtenerID_DA
    {
        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";
        int id1 = 0;
        public int obtenerID(string email)
        {

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerID";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", email);


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    
                   id1  = Convert.ToInt32(reader["usuario_infoID"].ToString());
                   
                }

                return id1;


            }




        }
    }
}
