using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Datos;
using Capa.Entidad;
using System.Data.SqlClient;

namespace Capa.Datos
{
  public  class Productos_DA
    {
        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";
        public object insertar(Productos_E pro)
        {

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "InsertarProductos";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id_tipo_producto", pro.tipo_producto);
                cmd.Parameters.AddWithValue("@nombre_producto", pro.nombre_producto);
                cmd.Parameters.AddWithValue("@descripcion", pro.descripcion);
                cmd.Parameters.AddWithValue("@cantidad", pro.cantidad);
                cmd.Parameters.AddWithValue("@precio",pro.precio);


                return cmd.ExecuteScalar();

            }


        }

        public List<Productos_E> obt_producto()
        {
            List<Productos_E> Producto = new List<Productos_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerProducto";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Productos_E obj = new Productos_E();

                    obj.id = Convert.ToInt32(reader["productoID"].ToString());
                    obj.tip_Producto = reader["tipo_de_productos"].ToString();
                    obj.nombre_producto = reader["nombre_producto"].ToString();
                    obj.descripcion = reader["descripcion"].ToString();
                    obj.cantidad = Convert.ToInt32(reader["cantidad"].ToString());
                    obj.precio = Convert.ToDecimal(reader["precio"].ToString());

                    Producto.Add(obj);
                }



                return Producto;

            }

        }

    }
}
