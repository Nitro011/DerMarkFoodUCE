using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Capa.Datos;
using Capa.Entidad;

namespace Capa.Datos
{
   public class TipoProducto_DA
    {
        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";
        public object insertar(TipoProducto_E tp)
        {

            

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "InsertarTipoProducto";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tipo_de_productos", tp.tipo_producto);
           


                return cmd.ExecuteScalar();

            }


        }

        public List<TipoProducto_E> obt_tipoProducto()
        {
            List<TipoProducto_E> tipoProducto = new List<TipoProducto_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerTipoProducto";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TipoProducto_E obj = new TipoProducto_E();

                    obj.id = Convert.ToInt32(reader["id_tipo_producto"].ToString());
                    obj.tipo_producto = reader["tipo_de_productos"].ToString();
                   
                    tipoProducto.Add(obj);
                }



                return tipoProducto;

            }

        }


    }
}
