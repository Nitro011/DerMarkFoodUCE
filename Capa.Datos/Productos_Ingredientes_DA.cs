using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Capa.Entidad;
using System.Data;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Capa.Datos
{
   public class Productos_Ingredientes_DA
    {

        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

        public object insertar(Productos_Ingredientes_E pe)
        {

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "insertar_Ingredientes";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@nombre_producto", pe.nombres_productos);
                cmd.Parameters.AddWithValue("@cantidad", pe.cantidad);
                cmd.Parameters.AddWithValue("@unidad_de_medida", pe.unidad_de_medida);
                cmd.Parameters.AddWithValue("@descripcion", pe.descripcion);
                cmd.Parameters.AddWithValue("@costo", pe.costo);




                return cmd.ExecuteScalar();

            }


        }


        public List<Productos_Ingredientes_E> obt_ingredientes()
        {
            List<Productos_Ingredientes_E> ingredientes = new List<Productos_Ingredientes_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "consultar_almacen";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Productos_Ingredientes_E obj = new Productos_Ingredientes_E();

                    
                    obj.nombres_productos = reader["nombre_producto"].ToString();
                    obj.cantidad = Convert.ToInt32(reader["cantidad"].ToString());
                    obj.unidadMedidastr =reader["unidad_de_medida"].ToString();
                    obj.costo = Convert.ToDecimal(reader["costo"].ToString());
                                     
                    obj.descripcion = reader["descripcion"].ToString();
                    obj.estado = reader["estados"].ToString();
                    ingredientes.Add(obj);
                }



                return ingredientes;

            }

        }

    }
}
