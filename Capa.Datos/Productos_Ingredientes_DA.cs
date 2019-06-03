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

        public object insertar(Productos_Ingredientes_E pe)
        {

            string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "InsertarIngredientes";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@productos",pe.nombres_productos);
                cmd.Parameters.AddWithValue("@cantidad", pe.cantidad);
                cmd.Parameters.AddWithValue("@unidad_de_medida", pe.unidad_de_medida);
                cmd.Parameters.AddWithValue("@descripcion", pe.descripcion);
              


                return cmd.ExecuteScalar();

            }


        }




    }
}
