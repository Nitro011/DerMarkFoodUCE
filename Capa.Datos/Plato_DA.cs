using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
using System.Data.SqlClient;
namespace Capa.Datos
{
   public class Plato_DA
    {

        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

        public object insertar(Plato_E ple)
        {

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                //cn.Open();
                //SqlCommand cmd = cn.CreateCommand();
                //cmd.CommandText = "InsertarPlato";
                //cmd.CommandType = System.Data.CommandType.StoredProcedure;

                //cmd.Parameters.AddWithValue("@nombre_de_plato", ple.nombres_productos);
                //cmd.Parameters.AddWithValue("@descripcion", pe.cantidad);
                //cmd.Parameters.AddWithValue("@id_producto_Ingredientes", pe.unidad_de_medida);
                //cmd.Parameters.AddWithValue("@cantidad", pe.descripcion);

                //cmd.Parameters.AddWithValue("@unidad_de_medida ", pe.descripcion);
                //cmd.Parameters.AddWithValue("@tiempo_preparacion", pe.descripcion);



                //return cmd.ExecuteScalar();
                return 0;

            }


        }
    }
}
