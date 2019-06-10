using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa.Entidad;
namespace Capa.Datos
{
   public class Empleado_DA
    {

        public object insertar(Empleado_E ee)
        {

            string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "insertarEmpleado";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ciudadID", ee.ciudad);
                cmd.Parameters.AddWithValue("@nacionalidadID", ee.nacionalidad);              
                cmd.Parameters.AddWithValue("@nombre", ee.nombre);
                cmd.Parameters.AddWithValue("@apellido", ee.apellido);
             
                cmd.Parameters.AddWithValue("@descripcion", ee.descripcion);
                cmd.Parameters.AddWithValue("@celular", ee.celular);
                cmd.Parameters.AddWithValue("@establecimiento", ee.establecimiento);
                cmd.Parameters.AddWithValue("@tipoempleado", ee.tipoempleado);
                cmd.Parameters.AddWithValue("@direccion", ee.direccion);

                cmd.Parameters.AddWithValue("@fn", ee.fecha_de_nacimiento);
                cmd.Parameters.AddWithValue("@sueldo", ee.sueldo);



                cmd.Parameters.AddWithValue("@contraseña", ee.contraseña);
                cmd.Parameters.AddWithValue("@correo_electronico", ee.correo_electronico);







                return cmd.ExecuteScalar();

            }


        }



    }
}
