using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace Capa.Datos
{
   public class InformacionUsuario_DA
    {
        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

        public List<InformacionUsuario_E> Obtenerusuarioinformacion(InformacionUsuario_E ie)
        {
            List<InformacionUsuario_E> userinformcaion = new List<InformacionUsuario_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "informacionUsuario";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", ie.correoelectronico);


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    InformacionUsuario_E obj = new InformacionUsuario_E();


                    obj.id = Convert.ToInt32(reader["id"].ToString());
                    obj.nombrecompleto = reader["nombrecompleto"].ToString();
                    obj.correoelectronico = reader["email"].ToString();
                    obj.nombreusuario = reader["username"].ToString();

                    userinformcaion.Add(obj);
                }



                return userinformcaion;

            }


        }




    }
}
