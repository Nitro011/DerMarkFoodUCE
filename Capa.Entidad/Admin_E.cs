using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa.Entidad
{
   public class Admin_E
    {
        public int idAdmin { get; set; }
        public int nacionalidad { get; set; }
        public int pais { get; set; }
        public int ciudad { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public DateTime fecha_de_nacimiento { get; set; }
        public string descripcion { get; set; }
        public string celular { get; set; }
        public string contraseña { get; set; }
        public string correo_electronico { get; set; }
        public int ciudadEmpresa { get; set; }
        public int paisEmpresa { get; set; }
        public string nombre_de_la_empresa { get; set; }
        public string direccionEmpresa { get; set; }
        public string descripcionEmpresa { get; set; }
        public string RNCEmpresa { get; set; }
        public string  correo_electronicoEmpresa { get; set; }
        public string telefonoEmpresa { get; set; }

    }
}
