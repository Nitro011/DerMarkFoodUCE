using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Capa.Entidad;

namespace Capa.Datos.Llenar_DropDown
{
   public class LlenarDropDown_DA
    {

        string cnSTR = "data source=.;initial catalog=DerMark;user id = admin;password = 123456789";

        public List<Pais_E> pais()
        {
            List<Pais_E> pais = new List<Pais_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerPais";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Pais_E obj = new Pais_E();



                    obj.id = Convert.ToInt32(reader["paisID"].ToString());
                    obj.pais = reader["pais"].ToString();

                    pais.Add(obj);
                }



                return pais;

            }

        }
        
        public List<Nacionalidad_E> nacionalidad()
        {
            List<Nacionalidad_E> nacionalidad = new List<Nacionalidad_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerNacionalidad";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Nacionalidad_E obj = new Nacionalidad_E();



                    obj.id = Convert.ToInt32(reader["nacionalidadID"].ToString());
                    obj.nacionalidad = reader["nacionalidad"].ToString();

                    nacionalidad.Add(obj);
                }



                return nacionalidad;

            }

            
        }

        public List<Ciudad_E> Ciudad()
        {
            List<Ciudad_E> ciudad = new List<Ciudad_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerCiudad";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Ciudad_E obj = new Ciudad_E();
                    
                    obj.id = Convert.ToInt32(reader["ciudadID"].ToString());
                    obj.ciudad = reader["ciudad"].ToString();

                    ciudad.Add(obj);
                }



                return ciudad;

            }



        }
        public List<Ciudad_E> establecimiento()
        {
            List<Ciudad_E> ciudad = new List<Ciudad_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerCiudad";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Ciudad_E obj = new Ciudad_E();

                    obj.id = Convert.ToInt32(reader["ciudadID"].ToString());
                    obj.ciudad = reader["ciudad"].ToString();

                    ciudad.Add(obj);
                }



                return ciudad;

            }



        }









        public List<tipoempleado_E> tipoempleado()
        {
            List<tipoempleado_E> ciudad = new List<tipoempleado_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerTipoUsuario";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    tipoempleado_E obj = new tipoempleado_E();

                    obj.id = Convert.ToInt32(reader["tipo_de_usuarioID"].ToString());
                    obj.tipoempleado = reader["tipo_de_usuario"].ToString();

                    ciudad.Add(obj);
                }



                return ciudad;

            }



        }

        public List<Establecimiento_E> obtenerEstablecimeinto(Establecimiento_E ese)
        {


            List<Establecimiento_E> estableciemit = new List<Establecimiento_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerEstablecimiento";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", ese.id);


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Establecimiento_E obj = new Establecimiento_E();

                    obj.id = Convert.ToInt32(reader["empresaID"].ToString());
                    obj.establecimiento = reader["nombre_de_la_empresa"].ToString();

                    estableciemit.Add(obj);
                }

                return estableciemit;

            }


          

        }
        public List<Unidad_De_Medida_E> obtenerUnidadDeMedida()
        {


            List<Unidad_De_Medida_E> obtenerUnidadDeMedidal = new List<Unidad_De_Medida_E>();



            using (SqlConnection cn = new SqlConnection(cnSTR))
            {
                cn.Open();
                SqlCommand cmd = cn.CreateCommand();
                cmd.CommandText = "ObtenerUnidadDeMedida";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
             

                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Unidad_De_Medida_E obj = new Unidad_De_Medida_E();

                    obj.id = Convert.ToInt32(reader["unidad_de_medidaId"].ToString());
                    obj.unidad_de_medida = reader["unidad_de_medida"].ToString();

                    obtenerUnidadDeMedidal.Add(obj);
                }

                return obtenerUnidadDeMedidal;

            }




        }



    }
}
    