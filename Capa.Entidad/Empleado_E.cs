using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa.Entidad
{
   public class Empleado_E
    {

        public int id { get; set; }
        public int nacionalidad { get; set; }
        public int ciudad { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public DateTime fecha_de_nacimiento { get; set; }
        public string descripcion { get; set; }
        public string celular { get; set; }
        public string contraseña { get; set; }
        public string correo_electronico { get; set; }
        public int establecimiento { get; set; }
        public int tipoempleado { get; set; }
    public string direccion { get; set; }
        public decimal sueldo { get; set; }
    }
}
